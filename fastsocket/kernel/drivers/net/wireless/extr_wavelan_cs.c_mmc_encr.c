
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int MMR_DES_AVAIL_AES ;
 int MMR_DES_AVAIL_DES ;
 int mmc_in (int ,int ) ;
 int mmr_des_avail ;
 int mmroff (int ,int ) ;

__attribute__((used)) static inline int
mmc_encr(u_long base)
{
  int temp;

  temp = mmc_in(base, mmroff(0, mmr_des_avail));
  if((temp != MMR_DES_AVAIL_DES) && (temp != MMR_DES_AVAIL_AES))
    return 0;
  else
    return temp;
}
