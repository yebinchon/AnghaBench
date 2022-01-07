
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adbhid {scalar_t__ id; int flags; } ;


 scalar_t__ ADB_KEYBOARD ;
 int FLAG_CAPSLOCK_IGNORE_NEXT ;
 int FLAG_CAPSLOCK_TRANSLATE ;
 struct adbhid** adbhid ;

__attribute__((used)) static void
adbhid_kbd_capslock_remember(void)
{
 struct adbhid *ahid;
 int i;

 for (i = 1; i < 16; i++) {
  ahid = adbhid[i];

  if (ahid && ahid->id == ADB_KEYBOARD)
   if (ahid->flags & FLAG_CAPSLOCK_TRANSLATE)
    ahid->flags |= FLAG_CAPSLOCK_IGNORE_NEXT;
 }
}
