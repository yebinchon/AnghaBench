
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct cxgbi_device {int flags; } ;


 int CXGBI_FLAG_ADAPTER_RESET ;
 struct cxgbi_device* cxgbi_device_find_by_lldev (struct t3cdev*) ;
 int cxgbi_device_unregister (struct cxgbi_device*) ;
 int pr_info (char*,struct cxgbi_device*,int) ;

__attribute__((used)) static void cxgb3i_dev_close(struct t3cdev *t3dev)
{
 struct cxgbi_device *cdev = cxgbi_device_find_by_lldev(t3dev);

 if (!cdev || cdev->flags & CXGBI_FLAG_ADAPTER_RESET) {
  pr_info("0x%p close, f 0x%x.\n", cdev, cdev ? cdev->flags : 0);
  return;
 }

 cxgbi_device_unregister(cdev);
}
