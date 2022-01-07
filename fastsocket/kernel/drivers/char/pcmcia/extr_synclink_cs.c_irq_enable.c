
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned short imra_value; unsigned short imrb_value; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 unsigned char CHA ;
 scalar_t__ CHB ;
 scalar_t__ IMR ;
 int write_reg16 (TYPE_1__*,scalar_t__,unsigned short) ;

__attribute__((used)) static void irq_enable(MGSLPC_INFO *info, unsigned char channel, unsigned short mask)
{
 if (channel == CHA) {
  info->imra_value &= ~mask;
  write_reg16(info, CHA + IMR, info->imra_value);
 } else {
  info->imrb_value &= ~mask;
  write_reg16(info, CHB + IMR, info->imrb_value);
 }
}
