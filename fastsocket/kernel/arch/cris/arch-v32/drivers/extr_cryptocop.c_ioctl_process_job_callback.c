
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioctl_job_cb_ctx {int processed; } ;
struct cryptocop_operation {int dummy; } ;


 int DEBUG (int ) ;
 int cryptocop_ioc_process_wq ;
 int printk (char*,struct cryptocop_operation*,void*) ;
 int wake_up (int *) ;

__attribute__((used)) static void ioctl_process_job_callback(struct cryptocop_operation *op, void*cb_data)
{
 struct ioctl_job_cb_ctx *jc = (struct ioctl_job_cb_ctx *)cb_data;

 DEBUG(printk("ioctl_process_job_callback: op=0x%p, cb_data=0x%p\n", op, cb_data));

 jc->processed = 1;
 wake_up(&cryptocop_ioc_process_wq);
}
