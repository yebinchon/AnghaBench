
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;
typedef enum dev_event { ____Placeholder_dev_event } dev_event ;





 int ccw_request_handler (struct ccw_device*) ;
 int ccw_request_notoper (struct ccw_device*) ;
 int ccw_request_timeout (struct ccw_device*) ;

__attribute__((used)) static void ccw_device_request_event(struct ccw_device *cdev, enum dev_event e)
{
 switch (e) {
 case 129:
  ccw_request_notoper(cdev);
  break;
 case 130:
  ccw_request_handler(cdev);
  break;
 case 128:
  ccw_request_timeout(cdev);
  break;
 default:
  break;
 }
}
