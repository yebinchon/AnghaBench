
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_device {int dummy; } ;
typedef enum cxgb4_state { ____Placeholder_cxgb4_state } cxgb4_state ;






 int cxgbi_device_unregister (struct cxgbi_device*) ;
 int pr_info (char*,struct cxgbi_device*,...) ;

__attribute__((used)) static int t4_uld_state_change(void *handle, enum cxgb4_state state)
{
 struct cxgbi_device *cdev = handle;

 switch (state) {
 case 128:
  pr_info("cdev 0x%p, UP.\n", cdev);

  break;
 case 129:
  pr_info("cdev 0x%p, RECOVERY.\n", cdev);

  break;
 case 130:
  pr_info("cdev 0x%p, DOWN.\n", cdev);
  break;
 case 131:
  pr_info("cdev 0x%p, DETACH.\n", cdev);
  cxgbi_device_unregister(cdev);
  break;
 default:
  pr_info("cdev 0x%p, unknown state %d.\n", cdev, state);
  break;
 }
 return 0;
}
