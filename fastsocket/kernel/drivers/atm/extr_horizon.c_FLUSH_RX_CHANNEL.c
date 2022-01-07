
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int hrz_dev ;


 int FLUSH_CHANNEL ;
 int RX_CHANNEL_PORT_OFF ;
 int wr_regw (int *,int ,int) ;

__attribute__((used)) static inline void FLUSH_RX_CHANNEL (hrz_dev * dev, u16 channel) {
  wr_regw (dev, RX_CHANNEL_PORT_OFF, FLUSH_CHANNEL | channel);
  return;
}
