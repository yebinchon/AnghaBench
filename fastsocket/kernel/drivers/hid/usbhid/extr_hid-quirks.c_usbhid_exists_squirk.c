
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hid_blacklist {scalar_t__ const idVendor; scalar_t__ const idProduct; int quirks; } ;


 int dbg_hid (char*,int ,scalar_t__ const,scalar_t__ const) ;
 struct hid_blacklist* hid_blacklist ;

__attribute__((used)) static const struct hid_blacklist *usbhid_exists_squirk(const u16 idVendor,
  const u16 idProduct)
{
 const struct hid_blacklist *bl_entry = ((void*)0);
 int n = 0;

 for (; hid_blacklist[n].idVendor; n++)
  if (hid_blacklist[n].idVendor == idVendor &&
    hid_blacklist[n].idProduct == idProduct)
   bl_entry = &hid_blacklist[n];

 if (bl_entry != ((void*)0))
  dbg_hid("Found squirk 0x%x for USB HID vendor 0x%hx prod 0x%hx\n",
    bl_entry->quirks, bl_entry->idVendor,
    bl_entry->idProduct);
 return bl_entry;
}
