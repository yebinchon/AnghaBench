
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp_spi {scalar_t__ regs; } ;


 int BM_SSP_CTRL0_IGNORE_CRC ;
 int BM_SSP_CTRL0_LOCK_CS ;
 scalar_t__ HW_SSP_CTRL0 ;
 int stmp3xxx_clearl (int ,scalar_t__) ;
 int stmp3xxx_setl (int ,scalar_t__) ;

__attribute__((used)) static inline void stmp_spi_disable(struct stmp_spi *ss)
{
 stmp3xxx_clearl(BM_SSP_CTRL0_LOCK_CS, ss->regs + HW_SSP_CTRL0);
 stmp3xxx_setl(BM_SSP_CTRL0_IGNORE_CRC, ss->regs + HW_SSP_CTRL0);
}
