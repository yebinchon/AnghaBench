
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; } ;


 int ETIMEDOUT ;
 int MDIO_MMD_PCS ;
 int PCS_FW_HEARTBEAT_REG ;
 int PCS_FW_HEARTB_LBN ;
 int PCS_FW_HEARTB_WIDTH ;
 int QT2025C_HEARTB_WAIT ;
 unsigned long QT2025C_MAX_HEARTB_TIME ;
 int efx_mdio_read (struct efx_nic*,int ,int ) ;
 int hw ;
 unsigned long jiffies ;
 int msleep (int ) ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int qt2025c_wait_heartbeat(struct efx_nic *efx)
{
 unsigned long timeout = jiffies + QT2025C_MAX_HEARTB_TIME;
 int reg, old_counter = 0;


 for (;;) {
  int counter;
  reg = efx_mdio_read(efx, MDIO_MMD_PCS, PCS_FW_HEARTBEAT_REG);
  if (reg < 0)
   return reg;
  counter = ((reg >> PCS_FW_HEARTB_LBN) &
       ((1 << PCS_FW_HEARTB_WIDTH) - 1));
  if (old_counter == 0)
   old_counter = counter;
  else if (counter != old_counter)
   break;
  if (time_after(jiffies, timeout)) {


   netif_err(efx, hw, efx->net_dev,
      "If an SFP+ direct attach cable is"
      " connected, please check that it complies"
      " with the SFP+ specification\n");
   return -ETIMEDOUT;
  }
  msleep(QT2025C_HEARTB_WAIT);
 }

 return 0;
}
