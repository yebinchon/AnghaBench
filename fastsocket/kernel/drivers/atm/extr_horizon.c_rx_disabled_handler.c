
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hrz_dev ;


 int KERN_WARNING ;
 int PRINTK (int ,char*) ;
 int RX_CONFIG_OFF ;
 int RX_ENABLE ;
 int rd_regw (int *,int ) ;
 int wr_regw (int *,int ,int) ;

__attribute__((used)) static inline void rx_disabled_handler (hrz_dev * dev) {
  wr_regw (dev, RX_CONFIG_OFF, rd_regw (dev, RX_CONFIG_OFF) | RX_ENABLE);

  PRINTK (KERN_WARNING, "RX was disabled!");
}
