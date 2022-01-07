
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cxio_rdev {int qpmask; TYPE_1__* rscp; } ;
struct TYPE_2__ {int qpid_fifo; int qpid_fifo_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int T3_MAX_NUM_QP ;
 int __kfifo_put (int ,unsigned char*,int) ;
 int kfifo_alloc (int,int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int cxio_init_qpid_fifo(struct cxio_rdev *rdev_p)
{
 u32 i;

 spin_lock_init(&rdev_p->rscp->qpid_fifo_lock);

 rdev_p->rscp->qpid_fifo = kfifo_alloc(T3_MAX_NUM_QP * sizeof(u32),
           GFP_KERNEL,
           &rdev_p->rscp->qpid_fifo_lock);
 if (IS_ERR(rdev_p->rscp->qpid_fifo))
  return -ENOMEM;

 for (i = 16; i < T3_MAX_NUM_QP; i++)
  if (!(i & rdev_p->qpmask))
   __kfifo_put(rdev_p->rscp->qpid_fifo,
        (unsigned char *) &i, sizeof(u32));
 return 0;
}
