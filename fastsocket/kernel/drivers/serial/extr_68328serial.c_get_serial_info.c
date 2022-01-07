
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct serial_struct {int custom_divisor; int closing_wait; int close_delay; int baud_base; int flags; int irq; int port; int line; int type; } ;
struct m68k_serial {int custom_divisor; int closing_wait; int close_delay; int baud_base; int flags; int irq; int port; int line; int type; } ;


 int EFAULT ;
 int copy_to_user (struct serial_struct*,struct serial_struct*,int) ;
 int memset (struct serial_struct*,int ,int) ;

__attribute__((used)) static int get_serial_info(struct m68k_serial * info,
      struct serial_struct * retinfo)
{
 struct serial_struct tmp;

 if (!retinfo)
  return -EFAULT;
 memset(&tmp, 0, sizeof(tmp));
 tmp.type = info->type;
 tmp.line = info->line;
 tmp.port = info->port;
 tmp.irq = info->irq;
 tmp.flags = info->flags;
 tmp.baud_base = info->baud_base;
 tmp.close_delay = info->close_delay;
 tmp.closing_wait = info->closing_wait;
 tmp.custom_divisor = info->custom_divisor;
 copy_to_user(retinfo,&tmp,sizeof(*retinfo));
 return 0;
}
