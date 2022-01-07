
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct adb_request {int reply_len; int* reply; } ;
struct TYPE_5__ {int nids; int* id; } ;


 int ADBMOUSE_EXTENDED ;
 int ADBMOUSE_MACALLY2 ;
 int ADBMOUSE_MICROSPEED ;
 int ADBMOUSE_MS_A3 ;
 int ADBMOUSE_STANDARD_100 ;
 int ADBMOUSE_STANDARD_200 ;
 int ADBMOUSE_TRACKBALL ;
 int ADBMOUSE_TRACKBALLPRO ;
 int ADBMOUSE_TRACKPAD ;
 int ADBMOUSE_TURBOMOUSE5 ;
 int ADBREQ_REPLY ;
 int ADBREQ_SYNC ;
 int ADB_KEYBOARD ;
 int ADB_MISC ;
 int ADB_MOUSE ;
 int ADB_READREG (int,int) ;
 int ADB_WRITEREG (int,int ) ;
 int KEYB_LEDREG ;
 int adb_get_infos (int,int*,int*) ;
 int adb_register (int ,int ,TYPE_1__*,int ) ;
 int adb_request (struct adb_request*,int *,int,int,int ,...) ;
 scalar_t__ adb_try_handler_change (int,int) ;
 int adbhid_buttons_input ;
 int adbhid_input_devcleanup (int ) ;
 int adbhid_input_reregister (int,int,int,int,int) ;
 int adbhid_keyboard_input ;
 int adbhid_mouse_input ;
 TYPE_1__ buttons_ids ;
 int init_microspeed (int) ;
 int init_ms_a3 (int) ;
 int init_trackball (int) ;
 int init_trackpad (int) ;
 int init_turbomouse (int) ;
 TYPE_1__ keyboard_ids ;
 TYPE_1__ mouse_ids ;
 int printk (char*,...) ;

__attribute__((used)) static void
adbhid_probe(void)
{
 struct adb_request req;
 int i, default_id, org_handler_id, cur_handler_id;
 u16 reg = 0;

 adb_register(ADB_MOUSE, 0, &mouse_ids, adbhid_mouse_input);
 adb_register(ADB_KEYBOARD, 0, &keyboard_ids, adbhid_keyboard_input);
 adb_register(ADB_MISC, 0, &buttons_ids, adbhid_buttons_input);

 for (i = 0; i < keyboard_ids.nids; i++) {
  int id = keyboard_ids.id[i];

  adb_get_infos(id, &default_id, &org_handler_id);


  adb_request(&req, ((void*)0), ADBREQ_SYNC, 3,
       ADB_WRITEREG(id, KEYB_LEDREG), 0xff, 0xff);
  if (adb_try_handler_change(id, 3))
   printk("ADB keyboard at %d, handler set to 3\n", id);
  else
   printk("ADB keyboard at %d, handler 1\n", id);

  adb_get_infos(id, &default_id, &cur_handler_id);
  reg |= adbhid_input_reregister(id, default_id, org_handler_id,
            cur_handler_id, 0);
 }

 for (i = 0; i < buttons_ids.nids; i++) {
  int id = buttons_ids.id[i];

  adb_get_infos(id, &default_id, &org_handler_id);
  reg |= adbhid_input_reregister(id, default_id, org_handler_id,
            org_handler_id, 0);
 }



 for (i = 0; i < mouse_ids.nids; i++) {
  int id = mouse_ids.id[i];
  int mouse_kind;

  adb_get_infos(id, &default_id, &org_handler_id);

  if (adb_try_handler_change(id, 4)) {
   printk("ADB mouse at %d, handler set to 4", id);
   mouse_kind = ADBMOUSE_EXTENDED;
  }
  else if (adb_try_handler_change(id, 0x2F)) {
   printk("ADB mouse at %d, handler set to 0x2F", id);
   mouse_kind = ADBMOUSE_MICROSPEED;
  }
  else if (adb_try_handler_change(id, 0x42)) {
   printk("ADB mouse at %d, handler set to 0x42", id);
   mouse_kind = ADBMOUSE_TRACKBALLPRO;
  }
  else if (adb_try_handler_change(id, 0x66)) {
   printk("ADB mouse at %d, handler set to 0x66", id);
   mouse_kind = ADBMOUSE_MICROSPEED;
  }
  else if (adb_try_handler_change(id, 0x5F)) {
   printk("ADB mouse at %d, handler set to 0x5F", id);
   mouse_kind = ADBMOUSE_MICROSPEED;
  }
  else if (adb_try_handler_change(id, 3)) {
   printk("ADB mouse at %d, handler set to 3", id);
   mouse_kind = ADBMOUSE_MS_A3;
  }
  else if (adb_try_handler_change(id, 2)) {
   printk("ADB mouse at %d, handler set to 2", id);
   mouse_kind = ADBMOUSE_STANDARD_200;
  }
  else {
   printk("ADB mouse at %d, handler 1", id);
   mouse_kind = ADBMOUSE_STANDARD_100;
  }

  if ((mouse_kind == ADBMOUSE_TRACKBALLPRO)
      || (mouse_kind == ADBMOUSE_MICROSPEED)) {
   init_microspeed(id);
  } else if (mouse_kind == ADBMOUSE_MS_A3) {
   init_ms_a3(id);
  } else if (mouse_kind == ADBMOUSE_EXTENDED) {






   adb_request(&req, ((void*)0), ADBREQ_SYNC | ADBREQ_REPLY, 1,
        ADB_READREG(id, 1));

   if ((req.reply_len) &&
       (req.reply[1] == 0x9a) && ((req.reply[2] == 0x21)
        || (req.reply[2] == 0x20))) {
    mouse_kind = ADBMOUSE_TRACKBALL;
    init_trackball(id);
   }
   else if ((req.reply_len >= 4) &&
       (req.reply[1] == 0x74) && (req.reply[2] == 0x70) &&
       (req.reply[3] == 0x61) && (req.reply[4] == 0x64)) {
    mouse_kind = ADBMOUSE_TRACKPAD;
    init_trackpad(id);
   }
   else if ((req.reply_len >= 4) &&
       (req.reply[1] == 0x4b) && (req.reply[2] == 0x4d) &&
       (req.reply[3] == 0x4c) && (req.reply[4] == 0x31)) {
    mouse_kind = ADBMOUSE_TURBOMOUSE5;
    init_turbomouse(id);
   }
   else if ((req.reply_len == 9) &&
       (req.reply[1] == 0x4b) && (req.reply[2] == 0x4f) &&
       (req.reply[3] == 0x49) && (req.reply[4] == 0x54)) {
    if (adb_try_handler_change(id, 0x42)) {
     printk("\nADB MacAlly 2-button mouse at %d, handler set to 0x42", id);
     mouse_kind = ADBMOUSE_MACALLY2;
    }
   }
  }
  printk("\n");

  adb_get_infos(id, &default_id, &cur_handler_id);
  reg |= adbhid_input_reregister(id, default_id, org_handler_id,
            cur_handler_id, mouse_kind);
 }
 adbhid_input_devcleanup(reg);
}
