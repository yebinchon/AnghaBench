
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int num; int pfn; scalar_t__ irq; } ;
struct virtqueue {void (* service ) (struct virtqueue*) ;struct virtqueue* next; TYPE_2__ config; int vring; scalar_t__ thread; struct device* dev; scalar_t__ last_avail_idx; } ;
struct device {struct virtqueue* vq; TYPE_1__* desc; int num_vq; } ;
typedef scalar_t__ pid_t ;
struct TYPE_6__ {int next_irq; } ;
struct TYPE_4__ {scalar_t__ config_len; scalar_t__ feature_len; int num_vq; } ;


 int LGUEST_VRING_ALIGN ;
 int assert (int) ;
 int device_config (struct device*) ;
 TYPE_3__ devices ;
 void* get_pages (unsigned int) ;
 int getpagesize () ;
 struct virtqueue* malloc (int) ;
 int memcpy (int ,TYPE_2__*,int) ;
 int to_guest_phys (void*) ;
 int verbose (char*,int) ;
 int vring_init (int *,unsigned int,void*,int ) ;
 int vring_size (unsigned int,int ) ;

__attribute__((used)) static void add_virtqueue(struct device *dev, unsigned int num_descs,
     void (*service)(struct virtqueue *))
{
 unsigned int pages;
 struct virtqueue **i, *vq = malloc(sizeof(*vq));
 void *p;


 pages = (vring_size(num_descs, LGUEST_VRING_ALIGN) + getpagesize() - 1)
  / getpagesize();
 p = get_pages(pages);


 vq->next = ((void*)0);
 vq->last_avail_idx = 0;
 vq->dev = dev;





 vq->service = service;
 vq->thread = (pid_t)-1;


 vq->config.num = num_descs;
 vq->config.irq = devices.next_irq++;
 vq->config.pfn = to_guest_phys(p) / getpagesize();


 vring_init(&vq->vring, num_descs, p, LGUEST_VRING_ALIGN);







 assert(dev->desc->config_len == 0 && dev->desc->feature_len == 0);
 memcpy(device_config(dev), &vq->config, sizeof(vq->config));
 dev->num_vq++;
 dev->desc->num_vq++;

 verbose("Virtqueue page %#lx\n", to_guest_phys(p));





 for (i = &dev->vq; *i; i = &(*i)->next);
 *i = vq;
}
