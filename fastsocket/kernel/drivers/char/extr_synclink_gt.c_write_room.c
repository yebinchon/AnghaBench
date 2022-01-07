
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct slgt_info* driver_data; } ;
struct slgt_info {int device_name; scalar_t__ tx_active; } ;


 int DBGINFO (char*) ;
 int HDLC_MAX_FRAME_SIZE ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;

__attribute__((used)) static int write_room(struct tty_struct *tty)
{
 struct slgt_info *info = tty->driver_data;
 int ret;

 if (sanity_check(info, tty->name, "write_room"))
  return 0;
 ret = (info->tx_active) ? 0 : HDLC_MAX_FRAME_SIZE;
 DBGINFO(("%s write_room=%d\n", info->device_name, ret));
 return ret;
}
