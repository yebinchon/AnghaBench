
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef short u8 ;
typedef int u16 ;
typedef int hrz_dev ;


 int TX_CHANNEL_CONFIG_COMMAND_OFF ;
 int TX_CHANNEL_CONFIG_DATA_OFF ;
 short TX_CHANNEL_CONFIG_MULT ;
 int rd_regw (int *,int ) ;
 int wr_regw (int *,int ,short) ;

__attribute__((used)) static inline u16 query_tx_channel_config (hrz_dev * dev, short chan, u8 mode) {
  wr_regw (dev, TX_CHANNEL_CONFIG_COMMAND_OFF,
    chan * TX_CHANNEL_CONFIG_MULT | mode);
    return rd_regw (dev, TX_CHANNEL_CONFIG_DATA_OFF);
}
