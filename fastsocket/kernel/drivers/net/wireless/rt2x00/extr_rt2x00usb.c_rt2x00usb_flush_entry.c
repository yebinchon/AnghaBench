
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00_dev {int cap_flags; } ;
struct queue_entry_priv_usb_bcn {int guardian_urb; int urb; } ;
struct queue_entry_priv_usb {int guardian_urb; int urb; } ;
struct queue_entry {TYPE_1__* queue; int flags; struct queue_entry_priv_usb_bcn* priv_data; } ;
struct TYPE_2__ {scalar_t__ qid; struct rt2x00_dev* rt2x00dev; } ;


 int ENTRY_OWNER_DEVICE_DATA ;
 scalar_t__ QID_BEACON ;
 int REQUIRE_BEACON_GUARD ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static bool rt2x00usb_flush_entry(struct queue_entry *entry, void *data)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct queue_entry_priv_usb *entry_priv = entry->priv_data;
 struct queue_entry_priv_usb_bcn *bcn_priv = entry->priv_data;

 if (!test_bit(ENTRY_OWNER_DEVICE_DATA, &entry->flags))
  return 0;

 usb_kill_urb(entry_priv->urb);




 if ((entry->queue->qid == QID_BEACON) &&
     (test_bit(REQUIRE_BEACON_GUARD, &rt2x00dev->cap_flags)))
  usb_kill_urb(bcn_priv->guardian_urb);

 return 0;
}
