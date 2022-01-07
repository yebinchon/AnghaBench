
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtqueue {struct lguest_vq_info* priv; } ;
struct virtio_device {int dev; } ;
struct TYPE_3__ {int irq; int num; scalar_t__ pfn; } ;
struct lguest_vq_info {int pages; TYPE_1__ config; } ;
struct lguest_device {TYPE_2__* desc; } ;
struct TYPE_4__ {unsigned int num_vq; } ;


 int DIV_ROUND_UP (int ,int ) ;
 int ENOENT ;
 int ENOMEM ;
 struct virtqueue* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int LGUEST_VRING_ALIGN ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int dev_name (int *) ;
 int kfree (struct lguest_vq_info*) ;
 struct lguest_vq_info* kmalloc (int,int ) ;
 int lg_notify ;
 unsigned int lg_vq (TYPE_2__*) ;
 int lguest_map (unsigned long,int ) ;
 int lguest_setup_irq (int ) ;
 int lguest_unmap (int ) ;
 int memcpy (TYPE_1__*,unsigned int,int) ;
 int printk (char*,unsigned int,unsigned long) ;
 int request_irq (int ,int ,int ,int ,struct virtqueue*) ;
 struct lguest_device* to_lgdev (struct virtio_device*) ;
 int vring_del_virtqueue (struct virtqueue*) ;
 int vring_interrupt ;
 struct virtqueue* vring_new_virtqueue (int ,int ,struct virtio_device*,int ,int ,void (*) (struct virtqueue*),char const*) ;
 int vring_size (int ,int ) ;

__attribute__((used)) static struct virtqueue *lg_find_vq(struct virtio_device *vdev,
        unsigned index,
        void (*callback)(struct virtqueue *vq),
        const char *name)
{
 struct lguest_device *ldev = to_lgdev(vdev);
 struct lguest_vq_info *lvq;
 struct virtqueue *vq;
 int err;


 if (index >= ldev->desc->num_vq)
  return ERR_PTR(-ENOENT);

 lvq = kmalloc(sizeof(*lvq), GFP_KERNEL);
 if (!lvq)
  return ERR_PTR(-ENOMEM);






 memcpy(&lvq->config, lg_vq(ldev->desc)+index, sizeof(lvq->config));

 printk("Mapping virtqueue %i addr %lx\n", index,
        (unsigned long)lvq->config.pfn << PAGE_SHIFT);

 lvq->pages = lguest_map((unsigned long)lvq->config.pfn << PAGE_SHIFT,
    DIV_ROUND_UP(vring_size(lvq->config.num,
       LGUEST_VRING_ALIGN),
          PAGE_SIZE));
 if (!lvq->pages) {
  err = -ENOMEM;
  goto free_lvq;
 }





 vq = vring_new_virtqueue(lvq->config.num, LGUEST_VRING_ALIGN,
     vdev, lvq->pages, lg_notify, callback, name);
 if (!vq) {
  err = -ENOMEM;
  goto unmap;
 }


 lguest_setup_irq(lvq->config.irq);
 err = request_irq(lvq->config.irq, vring_interrupt, IRQF_SHARED,
     dev_name(&vdev->dev), vq);
 if (err)
  goto destroy_vring;





 vq->priv = lvq;
 return vq;

destroy_vring:
 vring_del_virtqueue(vq);
unmap:
 lguest_unmap(lvq->pages);
free_lvq:
 kfree(lvq);
 return ERR_PTR(err);
}
