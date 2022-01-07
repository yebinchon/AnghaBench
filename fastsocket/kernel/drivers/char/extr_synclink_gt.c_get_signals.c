
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int signals; } ;


 unsigned short BIT0 ;
 unsigned short BIT1 ;
 unsigned short BIT2 ;
 unsigned short BIT3 ;
 int SSR ;
 int SerialSignal_CTS ;
 int SerialSignal_DCD ;
 int SerialSignal_DSR ;
 int SerialSignal_DTR ;
 int SerialSignal_RI ;
 int SerialSignal_RTS ;
 unsigned short rd_reg16 (struct slgt_info*,int ) ;

__attribute__((used)) static void get_signals(struct slgt_info *info)
{
 unsigned short status = rd_reg16(info, SSR);


 info->signals &= SerialSignal_DTR + SerialSignal_RTS;

 if (status & BIT3)
  info->signals |= SerialSignal_DSR;
 if (status & BIT2)
  info->signals |= SerialSignal_CTS;
 if (status & BIT1)
  info->signals |= SerialSignal_DCD;
 if (status & BIT0)
  info->signals |= SerialSignal_RI;
}
