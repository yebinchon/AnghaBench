
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {struct list_head* next; } ;
struct rio_dev {scalar_t__ vid; scalar_t__ did; scalar_t__ asm_vid; scalar_t__ asm_did; TYPE_1__ global_list; } ;
struct list_head {struct list_head* next; } ;


 scalar_t__ RIO_ANY_ID ;
 int WARN_ON (int ) ;
 int in_interrupt () ;
 struct rio_dev* rio_dev_g (struct list_head*) ;
 struct rio_dev* rio_dev_get (struct rio_dev*) ;
 int rio_dev_put (struct rio_dev*) ;
 struct list_head rio_devices ;
 int rio_global_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct rio_dev *rio_get_asm(u16 vid, u16 did,
       u16 asm_vid, u16 asm_did, struct rio_dev *from)
{
 struct list_head *n;
 struct rio_dev *rdev;

 WARN_ON(in_interrupt());
 spin_lock(&rio_global_list_lock);
 n = from ? from->global_list.next : rio_devices.next;

 while (n && (n != &rio_devices)) {
  rdev = rio_dev_g(n);
  if ((vid == RIO_ANY_ID || rdev->vid == vid) &&
      (did == RIO_ANY_ID || rdev->did == did) &&
      (asm_vid == RIO_ANY_ID || rdev->asm_vid == asm_vid) &&
      (asm_did == RIO_ANY_ID || rdev->asm_did == asm_did))
   goto exit;
  n = n->next;
 }
 rdev = ((void*)0);
      exit:
 rio_dev_put(from);
 rdev = rio_dev_get(rdev);
 spin_unlock(&rio_global_list_lock);
 return rdev;
}
