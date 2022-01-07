
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct t3cdev {struct cxio_rdev* ulp; } ;
struct iwch_dev {int ibdev; int db_drop_task; } ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {TYPE_1__ element; int * device; int event; } ;
struct cxio_rdev {int flags; } ;


 int CXIO_ERROR_FATAL ;
 int IB_EVENT_DEVICE_FATAL ;
 int IB_EVENT_PORT_ACTIVE ;
 int IB_EVENT_PORT_ERR ;






 int disable_dbs (struct iwch_dev*) ;
 int enable_dbs (struct iwch_dev*,int) ;
 int get_random_bytes (unsigned short*,int) ;
 int ib_dispatch_event (struct ib_event*) ;
 struct iwch_dev* rdev_to_iwch_dev (struct cxio_rdev*) ;
 int schedule_delayed_work (int *,int ) ;
 int synchronize_net () ;
 int usecs_to_jiffies (unsigned long) ;

__attribute__((used)) static void iwch_event_handler(struct t3cdev *tdev, u32 evt, u32 port_id)
{
 struct cxio_rdev *rdev = tdev->ulp;
 struct iwch_dev *rnicp;
 struct ib_event event;
 u32 portnum = port_id + 1;
 int dispatch = 0;

 if (!rdev)
  return;
 rnicp = rdev_to_iwch_dev(rdev);
 switch (evt) {
 case 128: {
  rdev->flags = CXIO_ERROR_FATAL;
  synchronize_net();
  event.event = IB_EVENT_DEVICE_FATAL;
  dispatch = 1;
  break;
  }
 case 130: {
  event.event = IB_EVENT_PORT_ERR;
  dispatch = 1;
  break;
  }
 case 129: {
  event.event = IB_EVENT_PORT_ACTIVE;
  dispatch = 1;
  break;
  }
 case 131: {
  disable_dbs(rnicp);
  break;
  }
 case 132: {
  enable_dbs(rnicp, 1);
  break;
  }
 case 133: {
  unsigned long delay = 1000;
  unsigned short r;

  disable_dbs(rnicp);
  get_random_bytes(&r, 2);
  delay += r & 1023;




  schedule_delayed_work(&rnicp->db_drop_task,
   usecs_to_jiffies(delay));
  break;
  }
 }

 if (dispatch) {
  event.device = &rnicp->ibdev;
  event.element.port_num = portnum;
  ib_dispatch_event(&event);
 }

 return;
}
