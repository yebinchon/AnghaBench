
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * bus; int release; } ;
struct hid_device {TYPE_2__ dev; int debug_list; int debug_wait; TYPE_1__* report_enum; int collection_size; int * collection; } ;
struct hid_collection {int dummy; } ;
struct TYPE_4__ {int report_list; } ;


 int ENOMEM ;
 struct hid_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int HID_DEFAULT_NUM_COLLECTIONS ;
 unsigned int HID_REPORT_TYPES ;
 int INIT_LIST_HEAD (int *) ;
 int device_initialize (TYPE_2__*) ;
 int hid_bus_type ;
 int hid_device_release ;
 int init_waitqueue_head (int *) ;
 int * kcalloc (int ,int,int ) ;
 struct hid_device* kzalloc (int,int ) ;
 int put_device (TYPE_2__*) ;

struct hid_device *hid_allocate_device(void)
{
 struct hid_device *hdev;
 unsigned int i;
 int ret = -ENOMEM;

 hdev = kzalloc(sizeof(*hdev), GFP_KERNEL);
 if (hdev == ((void*)0))
  return ERR_PTR(ret);

 device_initialize(&hdev->dev);
 hdev->dev.release = hid_device_release;
 hdev->dev.bus = &hid_bus_type;

 hdev->collection = kcalloc(HID_DEFAULT_NUM_COLLECTIONS,
   sizeof(struct hid_collection), GFP_KERNEL);
 if (hdev->collection == ((void*)0))
  goto err;
 hdev->collection_size = HID_DEFAULT_NUM_COLLECTIONS;

 for (i = 0; i < HID_REPORT_TYPES; i++)
  INIT_LIST_HEAD(&hdev->report_enum[i].report_list);

 init_waitqueue_head(&hdev->debug_wait);
 INIT_LIST_HEAD(&hdev->debug_list);

 return hdev;
err:
 put_device(&hdev->dev);
 return ERR_PTR(ret);
}
