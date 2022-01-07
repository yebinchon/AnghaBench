
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ idle_mode; } ;
typedef TYPE_1__ MGSLPC_INFO ;


 int BIT3 ;
 scalar_t__ CCR1 ;
 scalar_t__ CHA ;
 scalar_t__ HDLC_TXIDLE_FLAGS ;
 int clear_reg_bits (TYPE_1__*,scalar_t__,int ) ;
 int set_reg_bits (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static void tx_set_idle(MGSLPC_INFO *info)
{

 if (info->idle_mode == HDLC_TXIDLE_FLAGS)
  set_reg_bits(info, CHA + CCR1, BIT3);
 else
  clear_reg_bits(info, CHA + CCR1, BIT3);
}
