
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int MMR_FEE_STATUS_BUSY ;
 int mmc_in (int ,int ) ;
 int mmr_fee_status ;
 int mmroff (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void
fee_wait(u_long base,
  int delay,
  int number)
{
  int count = 0;

  while((count++ < number) &&
 (mmc_in(base, mmroff(0, mmr_fee_status)) & MMR_FEE_STATUS_BUSY))
    udelay(delay);
}
