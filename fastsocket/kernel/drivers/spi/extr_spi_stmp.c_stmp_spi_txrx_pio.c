
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp_spi {scalar_t__ regs; } ;


 int BM_SSP_CTRL0_DATA_XFER ;
 int BM_SSP_CTRL0_READ ;
 int BM_SSP_CTRL0_RUN ;
 int BM_SSP_CTRL0_XFER_COUNT ;
 int BM_SSP_STATUS_FIFO_EMPTY ;
 int ETIMEDOUT ;
 scalar_t__ HW_SSP_CTRL0 ;
 scalar_t__ HW_SSP_DATA ;
 scalar_t__ HW_SSP_STATUS ;
 scalar_t__ busy_wait (int) ;
 int readl (scalar_t__) ;
 int stmp3xxx_clearl (int,scalar_t__) ;
 int stmp3xxx_setl (int,scalar_t__) ;
 int stmp_spi_cs (int) ;
 int stmp_spi_disable (struct stmp_spi*) ;
 int stmp_spi_enable (struct stmp_spi*) ;
 int writel (unsigned char,scalar_t__) ;

__attribute__((used)) static int stmp_spi_txrx_pio(struct stmp_spi *ss, int cs,
  unsigned char *buf, int len,
  bool first, bool last, bool write)
{
 if (first)
  stmp_spi_enable(ss);

 stmp3xxx_setl(stmp_spi_cs(cs), ss->regs + HW_SSP_CTRL0);

 while (len--) {
  if (last && len <= 0)
   stmp_spi_disable(ss);

  stmp3xxx_clearl(BM_SSP_CTRL0_XFER_COUNT,
    ss->regs + HW_SSP_CTRL0);
  stmp3xxx_setl(1, ss->regs + HW_SSP_CTRL0);

  if (write)
   stmp3xxx_clearl(BM_SSP_CTRL0_READ,
     ss->regs + HW_SSP_CTRL0);
  else
   stmp3xxx_setl(BM_SSP_CTRL0_READ,
     ss->regs + HW_SSP_CTRL0);


  stmp3xxx_setl(BM_SSP_CTRL0_RUN, ss->regs + HW_SSP_CTRL0);

  if (!busy_wait(readl(ss->regs + HW_SSP_CTRL0) &
    BM_SSP_CTRL0_RUN))
   break;

  if (write)
   writel(*buf, ss->regs + HW_SSP_DATA);


  stmp3xxx_setl(BM_SSP_CTRL0_DATA_XFER, ss->regs + HW_SSP_CTRL0);

  if (!write) {
   if (busy_wait((readl(ss->regs + HW_SSP_STATUS) &
     BM_SSP_STATUS_FIFO_EMPTY)))
    break;
   *buf = readl(ss->regs + HW_SSP_DATA) & 0xFF;
  }

  if (!busy_wait(readl(ss->regs + HW_SSP_CTRL0) &
     BM_SSP_CTRL0_RUN))
   break;


  buf++;
 }

 return len < 0 ? 0 : -ETIMEDOUT;
}
