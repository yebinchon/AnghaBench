
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_struct {scalar_t__ baud_base; scalar_t__ type; scalar_t__ close_delay; int flags; int closing_wait; int custom_divisor; } ;
struct m68k_serial {scalar_t__ baud_base; scalar_t__ type; scalar_t__ close_delay; int flags; int count; int closing_wait; int custom_divisor; } ;
typedef int new_serial ;


 int CAP_SYS_ADMIN ;
 int EBUSY ;
 int EFAULT ;
 int EPERM ;
 int S_FLAGS ;
 int S_USR_MASK ;
 int capable (int ) ;
 int copy_from_user (struct serial_struct*,struct serial_struct*,int) ;
 int startup (struct m68k_serial*) ;

__attribute__((used)) static int set_serial_info(struct m68k_serial * info,
      struct serial_struct * new_info)
{
 struct serial_struct new_serial;
 struct m68k_serial old_info;
 int retval = 0;

 if (!new_info)
  return -EFAULT;
 copy_from_user(&new_serial,new_info,sizeof(new_serial));
 old_info = *info;

 if (!capable(CAP_SYS_ADMIN)) {
  if ((new_serial.baud_base != info->baud_base) ||
      (new_serial.type != info->type) ||
      (new_serial.close_delay != info->close_delay) ||
      ((new_serial.flags & ~S_USR_MASK) !=
       (info->flags & ~S_USR_MASK)))
   return -EPERM;
  info->flags = ((info->flags & ~S_USR_MASK) |
          (new_serial.flags & S_USR_MASK));
  info->custom_divisor = new_serial.custom_divisor;
  goto check_and_exit;
 }

 if (info->count > 1)
  return -EBUSY;






 info->baud_base = new_serial.baud_base;
 info->flags = ((info->flags & ~S_FLAGS) |
   (new_serial.flags & S_FLAGS));
 info->type = new_serial.type;
 info->close_delay = new_serial.close_delay;
 info->closing_wait = new_serial.closing_wait;

check_and_exit:
 retval = startup(info);
 return retval;
}
