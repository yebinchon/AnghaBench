
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct m68k_serial {size_t line; } ;
struct TYPE_4__ {int w; } ;
struct TYPE_5__ {TYPE_1__ utx; } ;
typedef TYPE_2__ m68328_uart ;


 int UTX_CTS_STAT ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int put_user (unsigned char,unsigned int*) ;
 TYPE_2__* uart_addr ;

__attribute__((used)) static int get_lsr_info(struct m68k_serial * info, unsigned int *value)
{



 unsigned char status;
 unsigned long flags;

 local_irq_save(flags);



 status = 0;

 local_irq_restore(flags);
 put_user(status,value);
 return 0;
}
