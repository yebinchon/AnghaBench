
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int table; } ;
struct TYPE_4__ {int table; } ;
struct ib_device {int dummy; } ;
struct ipath_ibdev {int txreq_bufs; TYPE_1__ lk_table; TYPE_2__ qp_table; int dd; int rnrwait; int piowait; int * pending; struct ib_device ibdev; } ;


 int disable_timer (int ) ;
 int ib_dealloc_device (struct ib_device*) ;
 int ib_unregister_device (struct ib_device*) ;
 int ipath_dev_err (int ,char*,...) ;
 scalar_t__ ipath_free_all_qps (TYPE_2__*) ;
 int ipath_mcast_tree_empty () ;
 int kfree (int ) ;
 int list_empty (int *) ;

void ipath_unregister_ib_device(struct ipath_ibdev *dev)
{
 struct ib_device *ibdev = &dev->ibdev;
 u32 qps_inuse;

 ib_unregister_device(ibdev);

 disable_timer(dev->dd);

 if (!list_empty(&dev->pending[0]) ||
     !list_empty(&dev->pending[1]) ||
     !list_empty(&dev->pending[2]))
  ipath_dev_err(dev->dd, "pending list not empty!\n");
 if (!list_empty(&dev->piowait))
  ipath_dev_err(dev->dd, "piowait list not empty!\n");
 if (!list_empty(&dev->rnrwait))
  ipath_dev_err(dev->dd, "rnrwait list not empty!\n");
 if (!ipath_mcast_tree_empty())
  ipath_dev_err(dev->dd, "multicast table memory leak!\n");




 qps_inuse = ipath_free_all_qps(&dev->qp_table);
 if (qps_inuse)
  ipath_dev_err(dev->dd, "QP memory leak! %u still in use\n",
   qps_inuse);
 kfree(dev->qp_table.table);
 kfree(dev->lk_table.table);
 kfree(dev->txreq_bufs);
 ib_dealloc_device(ibdev);
}
