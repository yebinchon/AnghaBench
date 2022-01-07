
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCDC_ALAW ;
 int CCDC_BLKCMP ;
 int CCDC_CLAMP ;
 int CCDC_COLPTN ;
 int CCDC_DCSUB ;
 int CCDC_FMTCFG ;
 int CCDC_FMT_HORZ ;
 int CCDC_FMT_VERT ;
 int CCDC_FPC ;
 int CCDC_FPC_ADDR ;
 int CCDC_HORZ_INFO ;
 int CCDC_HSIZE_OFF ;
 int CCDC_SDOFST ;
 int CCDC_SYN_MODE ;
 int CCDC_VERT_LINES ;
 int CCDC_VERT_START ;
 int CCDC_VP_OUT ;
 int dev ;
 int dev_notice (int ,char*,unsigned int) ;
 unsigned int regr (int ) ;

__attribute__((used)) static void ccdc_readregs(void)
{
 unsigned int val = 0;

 val = regr(CCDC_ALAW);
 dev_notice(dev, "\nReading 0x%x to ALAW...\n", val);
 val = regr(CCDC_CLAMP);
 dev_notice(dev, "\nReading 0x%x to CLAMP...\n", val);
 val = regr(CCDC_DCSUB);
 dev_notice(dev, "\nReading 0x%x to DCSUB...\n", val);
 val = regr(CCDC_BLKCMP);
 dev_notice(dev, "\nReading 0x%x to BLKCMP...\n", val);
 val = regr(CCDC_FPC_ADDR);
 dev_notice(dev, "\nReading 0x%x to FPC_ADDR...\n", val);
 val = regr(CCDC_FPC);
 dev_notice(dev, "\nReading 0x%x to FPC...\n", val);
 val = regr(CCDC_FMTCFG);
 dev_notice(dev, "\nReading 0x%x to FMTCFG...\n", val);
 val = regr(CCDC_COLPTN);
 dev_notice(dev, "\nReading 0x%x to COLPTN...\n", val);
 val = regr(CCDC_FMT_HORZ);
 dev_notice(dev, "\nReading 0x%x to FMT_HORZ...\n", val);
 val = regr(CCDC_FMT_VERT);
 dev_notice(dev, "\nReading 0x%x to FMT_VERT...\n", val);
 val = regr(CCDC_HSIZE_OFF);
 dev_notice(dev, "\nReading 0x%x to HSIZE_OFF...\n", val);
 val = regr(CCDC_SDOFST);
 dev_notice(dev, "\nReading 0x%x to SDOFST...\n", val);
 val = regr(CCDC_VP_OUT);
 dev_notice(dev, "\nReading 0x%x to VP_OUT...\n", val);
 val = regr(CCDC_SYN_MODE);
 dev_notice(dev, "\nReading 0x%x to SYN_MODE...\n", val);
 val = regr(CCDC_HORZ_INFO);
 dev_notice(dev, "\nReading 0x%x to HORZ_INFO...\n", val);
 val = regr(CCDC_VERT_START);
 dev_notice(dev, "\nReading 0x%x to VERT_START...\n", val);
 val = regr(CCDC_VERT_LINES);
 dev_notice(dev, "\nReading 0x%x to VERT_LINES...\n", val);
}
