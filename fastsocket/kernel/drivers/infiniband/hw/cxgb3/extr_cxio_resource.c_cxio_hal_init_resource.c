
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxio_rdev {struct cxio_hal_resource* rscp; } ;
struct cxio_hal_resource {int tpt_fifo; int qpid_fifo; int cqid_fifo; int pdid_fifo_lock; int pdid_fifo; int cqid_fifo_lock; int tpt_fifo_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cxio_init_qpid_fifo (struct cxio_rdev*) ;
 int cxio_init_resource_fifo (int *,int *,int ,int,int ) ;
 int cxio_init_resource_fifo_random (int *,int *,int ,int,int ) ;
 int kfifo_free (int ) ;
 struct cxio_hal_resource* kmalloc (int,int ) ;

int cxio_hal_init_resource(struct cxio_rdev *rdev_p,
      u32 nr_tpt, u32 nr_pbl,
      u32 nr_rqt, u32 nr_qpid, u32 nr_cqid, u32 nr_pdid)
{
 int err = 0;
 struct cxio_hal_resource *rscp;

 rscp = kmalloc(sizeof(*rscp), GFP_KERNEL);
 if (!rscp)
  return -ENOMEM;
 rdev_p->rscp = rscp;
 err = cxio_init_resource_fifo_random(&rscp->tpt_fifo,
          &rscp->tpt_fifo_lock,
          nr_tpt, 1, 0);
 if (err)
  goto tpt_err;
 err = cxio_init_qpid_fifo(rdev_p);
 if (err)
  goto qpid_err;
 err = cxio_init_resource_fifo(&rscp->cqid_fifo, &rscp->cqid_fifo_lock,
          nr_cqid, 1, 0);
 if (err)
  goto cqid_err;
 err = cxio_init_resource_fifo(&rscp->pdid_fifo, &rscp->pdid_fifo_lock,
          nr_pdid, 1, 0);
 if (err)
  goto pdid_err;
 return 0;
pdid_err:
 kfifo_free(rscp->cqid_fifo);
cqid_err:
 kfifo_free(rscp->qpid_fifo);
qpid_err:
 kfifo_free(rscp->tpt_fifo);
tpt_err:
 return -ENOMEM;
}
