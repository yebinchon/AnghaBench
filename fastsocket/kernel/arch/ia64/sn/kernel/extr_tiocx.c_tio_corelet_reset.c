
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nasid_t ;


 int REMOTE_HUB_S (int,int ,int) ;
 int TIO_ICE_PMI_TX_CFG ;
 int udelay (int) ;

__attribute__((used)) static void tio_corelet_reset(nasid_t nasid, int corelet)
{
 if (!(nasid & 1))
  return;

 REMOTE_HUB_S(nasid, TIO_ICE_PMI_TX_CFG, 1 << corelet);
 udelay(2000);
 REMOTE_HUB_S(nasid, TIO_ICE_PMI_TX_CFG, 0);
 udelay(2000);
}
