
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int debug; int debug_dir; void* debug_events; void* debug_rdesc; } ;


 int debugfs_create_dir (char const*,int ) ;
 void* debugfs_create_file (char*,int,int ,struct hid_device*,int *) ;
 int hid_debug_events_fops ;
 int hid_debug_rdesc_fops ;
 int hid_debug_root ;

void hid_debug_register(struct hid_device *hdev, const char *name)
{
 hdev->debug_dir = debugfs_create_dir(name, hid_debug_root);
 hdev->debug_rdesc = debugfs_create_file("rdesc", 0400,
   hdev->debug_dir, hdev, &hid_debug_rdesc_fops);
 hdev->debug_events = debugfs_create_file("events", 0400,
   hdev->debug_dir, hdev, &hid_debug_events_fops);
 hdev->debug = 1;
}
