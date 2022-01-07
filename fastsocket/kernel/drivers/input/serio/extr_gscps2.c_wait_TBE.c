
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GSC_STAT_TBNE ;
 int gscps2_readb_status (char*) ;
 int udelay (int) ;

__attribute__((used)) static int wait_TBE(char *addr)
{
 int timeout = 25000;
 while (gscps2_readb_status(addr) & GSC_STAT_TBNE) {
  if (!--timeout)
   return 0;
  udelay(10);
 }
 return 1;
}
