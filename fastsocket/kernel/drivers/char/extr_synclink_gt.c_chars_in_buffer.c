
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct slgt_info* driver_data; } ;
struct slgt_info {int device_name; } ;


 int DBGINFO (char*) ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int tbuf_bytes (struct slgt_info*) ;

__attribute__((used)) static int chars_in_buffer(struct tty_struct *tty)
{
 struct slgt_info *info = tty->driver_data;
 int count;
 if (sanity_check(info, tty->name, "chars_in_buffer"))
  return 0;
 count = tbuf_bytes(info);
 DBGINFO(("%s chars_in_buffer()=%d\n", info->device_name, count));
 return count;
}
