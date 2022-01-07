
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hrz_dev ;


 int RX_CHANNEL_PORT_OFF ;
 int RX_CHANNEL_UPDATE_IN_PROGRESS ;
 int rd_regw (int *,int ) ;

__attribute__((used)) static void WAIT_UPDATE_COMPLETE (hrz_dev * dev) {
  while (rd_regw (dev, RX_CHANNEL_PORT_OFF) & RX_CHANNEL_UPDATE_IN_PROGRESS)
    ;
  return;
}
