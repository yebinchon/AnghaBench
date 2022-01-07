
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_priv {scalar_t__ version; } ;


 int EMAC_CTRL_EWCTL ;
 int EMAC_DM646X_CMRXINTEN ;
 int EMAC_DM646X_CMTXINTEN ;
 scalar_t__ EMAC_VERSION_2 ;
 int emac_ctrl_write (int ,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void emac_int_disable(struct emac_priv *priv)
{
 if (priv->version == EMAC_VERSION_2) {
  unsigned long flags;

  local_irq_save(flags);



  emac_ctrl_write(EMAC_DM646X_CMRXINTEN, 0x0);
  emac_ctrl_write(EMAC_DM646X_CMTXINTEN, 0x0);


  local_irq_restore(flags);

 } else {

  emac_ctrl_write(EMAC_CTRL_EWCTL, 0x0);
 }
}
