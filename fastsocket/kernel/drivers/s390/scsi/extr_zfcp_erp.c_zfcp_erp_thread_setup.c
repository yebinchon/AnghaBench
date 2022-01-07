
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_adapter {struct task_struct* erp_thread; TYPE_1__* ccw_device; } ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 struct task_struct* kthread_run (int ,struct zfcp_adapter*,char*,int ) ;
 int zfcp_erp_thread ;

int zfcp_erp_thread_setup(struct zfcp_adapter *adapter)
{
 struct task_struct *thread;

 thread = kthread_run(zfcp_erp_thread, adapter, "zfcperp%s",
        dev_name(&adapter->ccw_device->dev));
 if (IS_ERR(thread)) {
  dev_err(&adapter->ccw_device->dev,
   "Creating an ERP thread for the FCP device failed.\n");
  return PTR_ERR(thread);
 }

 adapter->erp_thread = thread;
 return 0;
}
