
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t3cdev {int dummy; } ;
struct cxgbi_device {int flags; } ;


 int CXGBI_DBG_TOE ;
 int CXGBI_FLAG_ADAPTER_RESET ;


 struct cxgbi_device* cxgbi_device_find_by_lldev (struct t3cdev*) ;
 int log_debug (int,char*,struct t3cdev*,struct cxgbi_device*,int ,int ) ;

__attribute__((used)) static void cxgb3i_dev_event_handler(struct t3cdev *t3dev, u32 event, u32 port)
{
 struct cxgbi_device *cdev = cxgbi_device_find_by_lldev(t3dev);

 log_debug(1 << CXGBI_DBG_TOE,
  "0x%p, cdev 0x%p, event 0x%x, port 0x%x.\n",
  t3dev, cdev, event, port);
 if (!cdev)
  return;

 switch (event) {
 case 129:
  cdev->flags |= CXGBI_FLAG_ADAPTER_RESET;
  break;
 case 128:
  cdev->flags &= ~CXGBI_FLAG_ADAPTER_RESET;
  break;
 }
}
