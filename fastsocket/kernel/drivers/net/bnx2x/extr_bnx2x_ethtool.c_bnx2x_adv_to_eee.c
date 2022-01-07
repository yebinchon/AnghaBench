
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 int SHMEM_EEE_100M_ADV ;
 int SHMEM_EEE_10G_ADV ;
 int SHMEM_EEE_1G_ADV ;

__attribute__((used)) static u32 bnx2x_adv_to_eee(u32 modes, u32 shift)
{
 u32 eee_adv = 0;
 if (modes & ADVERTISED_100baseT_Full)
  eee_adv |= SHMEM_EEE_100M_ADV;
 if (modes & ADVERTISED_1000baseT_Full)
  eee_adv |= SHMEM_EEE_1G_ADV;
 if (modes & ADVERTISED_10000baseT_Full)
  eee_adv |= SHMEM_EEE_10G_ADV;

 return eee_adv << shift;
}
