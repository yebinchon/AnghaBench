
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {scalar_t__ bus; scalar_t__ vendor; scalar_t__ product; } ;
struct hid_device {scalar_t__ bus; scalar_t__ vendor; scalar_t__ product; } ;


 scalar_t__ HID_ANY_ID ;

__attribute__((used)) static bool hid_match_one_id(struct hid_device *hdev,
  const struct hid_device_id *id)
{
 return id->bus == hdev->bus &&
  (id->vendor == HID_ANY_ID || id->vendor == hdev->vendor) &&
  (id->product == HID_ANY_ID || id->product == hdev->product);
}
