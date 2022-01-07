
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ie2_value; scalar_t__ ie1_value; scalar_t__ ie0_value; int serial_signals; scalar_t__ sca_base; } ;
typedef TYPE_1__ SLMP_INFO ;


 scalar_t__ CHRESET ;
 int CMD ;
 int IE0 ;
 int IE1 ;
 int IE2 ;
 int SerialSignal_DTR ;
 int SerialSignal_RTS ;
 int rx_stop (TYPE_1__*) ;
 int set_signals (TYPE_1__*) ;
 int tx_stop (TYPE_1__*) ;
 int write_reg (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static void reset_port(SLMP_INFO *info)
{
 if (info->sca_base) {

  tx_stop(info);
  rx_stop(info);

  info->serial_signals &= ~(SerialSignal_DTR + SerialSignal_RTS);
  set_signals(info);


  info->ie0_value = 0;
  info->ie1_value = 0;
  info->ie2_value = 0;
  write_reg(info, IE0, info->ie0_value);
  write_reg(info, IE1, info->ie1_value);
  write_reg(info, IE2, info->ie2_value);

  write_reg(info, CMD, CHRESET);
 }
}
