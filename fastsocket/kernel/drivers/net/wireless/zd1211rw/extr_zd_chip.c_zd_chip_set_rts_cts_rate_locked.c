
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zd_chip {int dummy; } ;


 int CR_RTS_CTS_RATE ;
 int RTSCTS_SH_CTS_MOD_TYPE ;
 int RTSCTS_SH_CTS_PMB_TYPE ;
 int RTSCTS_SH_CTS_RATE ;
 int RTSCTS_SH_RTS_MOD_TYPE ;
 int RTSCTS_SH_RTS_PMB_TYPE ;
 int RTSCTS_SH_RTS_RATE ;
 int ZD_CCK_RATE_11M ;
 int ZD_PURE_RATE (int ) ;
 int ZD_RX_CCK ;
 int dev_dbg_f (int ,char*,int) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_iowrite32_locked (struct zd_chip*,int,int ) ;

int zd_chip_set_rts_cts_rate_locked(struct zd_chip *chip,
        int preamble)
{
 u32 value = 0;

 dev_dbg_f(zd_chip_dev(chip), "preamble=%x\n", preamble);
 value |= preamble << RTSCTS_SH_RTS_PMB_TYPE;
 value |= preamble << RTSCTS_SH_CTS_PMB_TYPE;


 value |= ZD_PURE_RATE(ZD_CCK_RATE_11M) << RTSCTS_SH_RTS_RATE;
 value |= ZD_RX_CCK << RTSCTS_SH_RTS_MOD_TYPE;
 value |= ZD_PURE_RATE(ZD_CCK_RATE_11M) << RTSCTS_SH_CTS_RATE;
 value |= ZD_RX_CCK << RTSCTS_SH_CTS_MOD_TYPE;

 return zd_iowrite32_locked(chip, value, CR_RTS_CTS_RATE);
}
