
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_user_sdma_queue {int pkt_slab; int dma_pages_root; int header_cache; int header_cache_name; int pkt_slab_name; int lock; int sent; scalar_t__ sent_counter; scalar_t__ counter; } ;
struct qib_user_sdma_pkt {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int QIB_USER_SDMA_EXP_HEADER_LENGTH ;
 int RB_ROOT ;
 int dma_pool_create (int ,struct device*,int ,int,int ) ;
 int kfree (struct qib_user_sdma_queue*) ;
 struct qib_user_sdma_queue* kmalloc (int,int ) ;
 int kmem_cache_create (int ,int,int ,int ,int *) ;
 int kmem_cache_destroy (int ) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,int,int,int) ;

struct qib_user_sdma_queue *
qib_user_sdma_queue_create(struct device *dev, int unit, int ctxt, int sctxt)
{
 struct qib_user_sdma_queue *pq =
  kmalloc(sizeof(struct qib_user_sdma_queue), GFP_KERNEL);

 if (!pq)
  goto done;

 pq->counter = 0;
 pq->sent_counter = 0;
 INIT_LIST_HEAD(&pq->sent);

 mutex_init(&pq->lock);

 snprintf(pq->pkt_slab_name, sizeof(pq->pkt_slab_name),
   "qib-user-sdma-pkts-%u-%02u.%02u", unit, ctxt, sctxt);
 pq->pkt_slab = kmem_cache_create(pq->pkt_slab_name,
      sizeof(struct qib_user_sdma_pkt),
      0, 0, ((void*)0));

 if (!pq->pkt_slab)
  goto err_kfree;

 snprintf(pq->header_cache_name, sizeof(pq->header_cache_name),
   "qib-user-sdma-headers-%u-%02u.%02u", unit, ctxt, sctxt);
 pq->header_cache = dma_pool_create(pq->header_cache_name,
        dev,
        QIB_USER_SDMA_EXP_HEADER_LENGTH,
        4, 0);
 if (!pq->header_cache)
  goto err_slab;

 pq->dma_pages_root = RB_ROOT;

 goto done;

err_slab:
 kmem_cache_destroy(pq->pkt_slab);
err_kfree:
 kfree(pq);
 pq = ((void*)0);

done:
 return pq;
}
