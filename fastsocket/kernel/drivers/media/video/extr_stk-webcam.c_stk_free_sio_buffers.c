
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stk_camera {int n_sbufs; TYPE_1__* sio_bufs; int spinlock; int sio_full; int sio_avail; } ;
struct TYPE_2__ {scalar_t__ mapcount; int * buffer; } ;


 int EBUSY ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vfree (int *) ;

__attribute__((used)) static int stk_free_sio_buffers(struct stk_camera *dev)
{
 int i;
 int nbufs;
 unsigned long flags;
 if (dev->n_sbufs == 0 || dev->sio_bufs == ((void*)0))
  return 0;



 for (i = 0; i < dev->n_sbufs; i++) {
  if (dev->sio_bufs[i].mapcount > 0)
   return -EBUSY;
 }



 spin_lock_irqsave(&dev->spinlock, flags);
 INIT_LIST_HEAD(&dev->sio_avail);
 INIT_LIST_HEAD(&dev->sio_full);
 nbufs = dev->n_sbufs;
 dev->n_sbufs = 0;
 spin_unlock_irqrestore(&dev->spinlock, flags);
 for (i = 0; i < nbufs; i++) {
  if (dev->sio_bufs[i].buffer != ((void*)0))
   vfree(dev->sio_bufs[i].buffer);
 }
 kfree(dev->sio_bufs);
 dev->sio_bufs = ((void*)0);
 return 0;
}
