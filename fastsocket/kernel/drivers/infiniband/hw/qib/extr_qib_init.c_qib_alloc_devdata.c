
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int ibdev; } ;
struct qib_devdata {TYPE_1__ verbs_dev; int list; int unit; } ;
struct pci_dev {int dev; } ;


 int BITS_TO_LONGS (scalar_t__) ;
 int ENOMEM ;
 struct qib_devdata* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ ib_alloc_device (int) ;
 int ib_dealloc_device (int *) ;
 int idr_get_new (int *,struct qib_devdata*,int *) ;
 int idr_pre_get (int *,int ) ;
 scalar_t__ kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ num_online_cpus () ;
 scalar_t__ qib_cpulist ;
 scalar_t__ qib_cpulist_count ;
 int qib_dev_list ;
 int qib_devs_lock ;
 int qib_early_err (int *,char*,...) ;
 int qib_unit_table ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct qib_devdata *qib_alloc_devdata(struct pci_dev *pdev, size_t extra)
{
 unsigned long flags;
 struct qib_devdata *dd;
 int ret;

 if (!idr_pre_get(&qib_unit_table, GFP_KERNEL)) {
  dd = ERR_PTR(-ENOMEM);
  goto bail;
 }

 dd = (struct qib_devdata *) ib_alloc_device(sizeof(*dd) + extra);
 if (!dd) {
  dd = ERR_PTR(-ENOMEM);
  goto bail;
 }

 spin_lock_irqsave(&qib_devs_lock, flags);
 ret = idr_get_new(&qib_unit_table, dd, &dd->unit);
 if (ret >= 0)
  list_add(&dd->list, &qib_dev_list);
 spin_unlock_irqrestore(&qib_devs_lock, flags);

 if (ret < 0) {
  qib_early_err(&pdev->dev,
         "Could not allocate unit ID: error %d\n", -ret);
  ib_dealloc_device(&dd->verbs_dev.ibdev);
  dd = ERR_PTR(ret);
  goto bail;
 }

 if (!qib_cpulist_count) {
  u32 count = num_online_cpus();
  qib_cpulist = kzalloc(BITS_TO_LONGS(count) *
          sizeof(long), GFP_KERNEL);
  if (qib_cpulist)
   qib_cpulist_count = count;
  else
   qib_early_err(&pdev->dev,
    "Could not alloc cpulist info, cpu affinity might be wrong\n");
 }

bail:
 return dd;
}
