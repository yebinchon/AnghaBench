
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hrz_dev ;


 int CONTROL_0_REG ;
 int DBG_REGS ;
 int INT_ENABLE_REG_OFF ;
 int INT_SOURCE_REG_OFF ;
 int PRINTD (int ,char*,int ) ;
 int RX_CONFIG_OFF ;
 int TX_CONFIG_OFF ;
 int TX_STATUS_OFF ;
 int rd_regl (int *,int ) ;
 int rd_regw (int *,int ) ;

__attribute__((used)) static inline void dump_regs (hrz_dev * dev) {
  (void) dev;

  return;
}
