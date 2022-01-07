
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {scalar_t__ bus; } ;
struct hid_device {int dummy; } ;


 scalar_t__ hid_match_one_id (struct hid_device*,struct hid_device_id const*) ;

__attribute__((used)) static const struct hid_device_id *hid_match_id(struct hid_device *hdev,
  const struct hid_device_id *id)
{
 for (; id->bus; id++)
  if (hid_match_one_id(hdev, id))
   return id;

 return ((void*)0);
}
