
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m68k_serial {size_t line; } ;
struct TYPE_2__ {unsigned short ubaud; } ;


 unsigned long GET_FIELD (unsigned short,int ) ;
 int UBAUD_DIVIDE ;
 int UBAUD_PRESCALER ;
 TYPE_1__* uart_addr ;

__attribute__((used)) static inline int get_baud(struct m68k_serial *ss)
{
 unsigned long result = 115200;
 unsigned short int baud = uart_addr[ss->line].ubaud;
 if (GET_FIELD(baud, UBAUD_PRESCALER) == 0x38) result = 38400;
 result >>= GET_FIELD(baud, UBAUD_DIVIDE);

 return result;
}
