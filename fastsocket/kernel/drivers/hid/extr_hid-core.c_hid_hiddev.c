
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;


 int hid_hiddev_list ;
 int hid_match_id (struct hid_device*,int ) ;

__attribute__((used)) static bool hid_hiddev(struct hid_device *hdev)
{
 return !!hid_match_id(hdev, hid_hiddev_list);
}
