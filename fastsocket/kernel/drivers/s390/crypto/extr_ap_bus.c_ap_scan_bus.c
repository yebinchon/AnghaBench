
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct device {int kobj; int release; int parent; int * bus; } ;
struct ap_device {int unregistered; int queue_depth; int device_type; unsigned int functions; struct device device; int lock; scalar_t__ qid; int timeout; int list; int requestq; int pendingq; } ;
typedef scalar_t__ ap_qid_t ;


 int AP_DEVICES ;
 scalar_t__ AP_MKQID (int,int ) ;
 int AP_QID_DEVICE (scalar_t__) ;
 int AP_RESET_TIMEOUT ;
 int EBUSY ;
 int ENODEV ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int TASK_UNINTERRUPTIBLE ;
 int __ap_scan_bus ;
 int ap_bus_type ;
 int ap_dev_attr_group ;
 int ap_device_release ;
 int ap_domain_index ;
 int ap_init_queue (scalar_t__) ;
 int ap_probe_device_type (struct ap_device*) ;
 int ap_query_configuration () ;
 int ap_query_functions (scalar_t__,unsigned int*) ;
 int ap_query_queue (scalar_t__,int*,int*) ;
 int ap_request_timeout ;
 int ap_root_device ;
 scalar_t__ ap_select_domain () ;
 scalar_t__ ap_test_config_card_id (int) ;
 struct device* bus_find_device (int *,int *,void*,int ) ;
 scalar_t__ dev_set_name (struct device*,char*,int ) ;
 int device_register (struct device*) ;
 int device_unregister (struct device*) ;
 int kfree (struct ap_device*) ;
 struct ap_device* kzalloc (int,int ) ;
 int put_device (struct device*) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;
 int sysfs_create_group (int *,int *) ;
 struct ap_device* to_ap_dev (struct device*) ;

__attribute__((used)) static void ap_scan_bus(struct work_struct *unused)
{
 struct ap_device *ap_dev;
 struct device *dev;
 ap_qid_t qid;
 int queue_depth, device_type;
 unsigned int device_functions;
 int rc, i;

 ap_query_configuration();
 if (ap_select_domain() != 0) {
  return;
 }
 for (i = 0; i < AP_DEVICES; i++) {
  qid = AP_MKQID(i, ap_domain_index);
  dev = bus_find_device(&ap_bus_type, ((void*)0),
          (void *)(unsigned long)qid,
          __ap_scan_bus);
  if (ap_test_config_card_id(i))
   rc = ap_query_queue(qid, &queue_depth, &device_type);
  else
   rc = -ENODEV;
  if (dev) {
   if (rc == -EBUSY) {
    set_current_state(TASK_UNINTERRUPTIBLE);
    schedule_timeout(AP_RESET_TIMEOUT);
    rc = ap_query_queue(qid, &queue_depth,
          &device_type);
   }
   ap_dev = to_ap_dev(dev);
   spin_lock_bh(&ap_dev->lock);
   if (rc || ap_dev->unregistered) {
    spin_unlock_bh(&ap_dev->lock);
    if (ap_dev->unregistered)
     i--;
    device_unregister(dev);
    put_device(dev);
    continue;
   }
   spin_unlock_bh(&ap_dev->lock);
   put_device(dev);
   continue;
  }
  if (rc)
   continue;
  rc = ap_init_queue(qid);
  if (rc)
   continue;
  ap_dev = kzalloc(sizeof(*ap_dev), GFP_KERNEL);
  if (!ap_dev)
   break;
  ap_dev->qid = qid;
  ap_dev->queue_depth = queue_depth;
  ap_dev->unregistered = 1;
  spin_lock_init(&ap_dev->lock);
  INIT_LIST_HEAD(&ap_dev->pendingq);
  INIT_LIST_HEAD(&ap_dev->requestq);
  INIT_LIST_HEAD(&ap_dev->list);
  setup_timer(&ap_dev->timeout, ap_request_timeout,
       (unsigned long) ap_dev);
  switch (device_type) {
  case 0:

   if (ap_probe_device_type(ap_dev)) {
    kfree(ap_dev);
    continue;
   }
   break;
  default:
   ap_dev->device_type = device_type;
  }

  rc = ap_query_functions(qid, &device_functions);
  if (!rc)
   ap_dev->functions = device_functions;
  else
   ap_dev->functions = 0u;

  ap_dev->device.bus = &ap_bus_type;
  ap_dev->device.parent = ap_root_device;
  if (dev_set_name(&ap_dev->device, "card%02x",
     AP_QID_DEVICE(ap_dev->qid))) {
   kfree(ap_dev);
   continue;
  }
  ap_dev->device.release = ap_device_release;
  rc = device_register(&ap_dev->device);
  if (rc) {
   put_device(&ap_dev->device);
   continue;
  }

  rc = sysfs_create_group(&ap_dev->device.kobj,
     &ap_dev_attr_group);
  if (!rc) {
   spin_lock_bh(&ap_dev->lock);
   ap_dev->unregistered = 0;
   spin_unlock_bh(&ap_dev->lock);
  } else
   device_unregister(&ap_dev->device);
 }
}
