
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef scalar_t__ u8 ;
struct if_cs_card {int dummy; } ;


 int ETIME ;
 scalar_t__ if_cs_read8 (struct if_cs_card*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int if_cs_poll_while_fw_download(struct if_cs_card *card, uint addr, u8 reg)
{
 int i;

 for (i = 0; i < 100000; i++) {
  u8 val = if_cs_read8(card, addr);
  if (val == reg)
   return 0;
  udelay(5);
 }
 return -ETIME;
}
