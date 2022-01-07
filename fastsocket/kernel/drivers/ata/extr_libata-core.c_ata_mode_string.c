
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const* const*) ;
 int fls (unsigned long) ;

const char *ata_mode_string(unsigned long xfer_mask)
{
 static const char * const xfer_mode_str[] = {
  "PIO0",
  "PIO1",
  "PIO2",
  "PIO3",
  "PIO4",
  "PIO5",
  "PIO6",
  "MWDMA0",
  "MWDMA1",
  "MWDMA2",
  "MWDMA3",
  "MWDMA4",
  "UDMA/16",
  "UDMA/25",
  "UDMA/33",
  "UDMA/44",
  "UDMA/66",
  "UDMA/100",
  "UDMA/133",
  "UDMA7",
 };
 int highbit;

 highbit = fls(xfer_mask) - 1;
 if (highbit >= 0 && highbit < ARRAY_SIZE(xfer_mode_str))
  return xfer_mode_str[highbit];
 return "<n/a>";
}
