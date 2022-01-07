
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccdc_fault_pixel {int fpc_table_addr; int fp_num; int enable; } ;


 int CCDC_FPC ;
 int CCDC_FPC_ADDR ;
 int CCDC_FPC_DISABLE ;
 int CCDC_FPC_ENABLE ;
 int CCDC_FPC_FPC_NUM_MASK ;
 int dev ;
 int dev_dbg (int ,char*,int) ;
 int regr (int ) ;
 int regw (int,int ) ;

__attribute__((used)) static void ccdc_config_fpc(struct ccdc_fault_pixel *fpc)
{
 u32 val;


 val = CCDC_FPC_DISABLE;
 regw(val, CCDC_FPC);

 if (!fpc->enable)
  return;


 regw(fpc->fpc_table_addr, CCDC_FPC_ADDR);
 dev_dbg(dev, "\nWriting 0x%x to FPC_ADDR...\n",
         (fpc->fpc_table_addr));

 val = fpc->fp_num & CCDC_FPC_FPC_NUM_MASK;
 regw(val, CCDC_FPC);

 dev_dbg(dev, "\nWriting 0x%x to FPC...\n", val);

 val = regr(CCDC_FPC) | CCDC_FPC_ENABLE;
 regw(val, CCDC_FPC);
 dev_dbg(dev, "\nWriting 0x%x to FPC...\n", val);
}
