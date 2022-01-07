
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int clock_speed; } ;
struct TYPE_11__ {int port_num; TYPE_2__ params; TYPE_1__** port_array; } ;
struct TYPE_9__ {int ctrlreg_value; } ;
typedef TYPE_3__ SLMP_INFO ;


 int BIT0 ;
 int BIT1 ;
 int MD2 ;
 int RXS ;
 int TXS ;
 int read_reg (TYPE_3__*,int ) ;
 int set_rate (TYPE_3__*,int) ;
 int write_control_reg (TYPE_3__*) ;
 int write_reg (TYPE_3__*,int ,int) ;

__attribute__((used)) static void enable_loopback(SLMP_INFO *info, int enable)
{
 if (enable) {



  write_reg(info, MD2, (unsigned char)(read_reg(info, MD2) | (BIT1 + BIT0)));


  info->port_array[0]->ctrlreg_value |= (BIT0 << (info->port_num * 2));
  write_control_reg(info);






  write_reg(info, RXS, 0x40);
  write_reg(info, TXS, 0x40);

 } else {



  write_reg(info, MD2, (unsigned char)(read_reg(info, MD2) & ~(BIT1 + BIT0)));






  write_reg(info, RXS, 0x00);
  write_reg(info, TXS, 0x00);
 }


 if (info->params.clock_speed)
  set_rate(info, info->params.clock_speed);
 else
  set_rate(info, 3686400);
}
