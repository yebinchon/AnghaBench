
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {TYPE_1__* dev; int prev_mac; int base_qpn; scalar_t__ port_up; } ;
struct TYPE_2__ {int dev_addr; } ;


 int HW ;
 int en_dbg (int ,struct mlx4_en_priv*,char*) ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int memcpy (int ,int ,int) ;
 int mlx4_en_replace_mac (struct mlx4_en_priv*,int ,int ,int ) ;

__attribute__((used)) static int mlx4_en_do_set_mac(struct mlx4_en_priv *priv)
{
 int err = 0;

 if (priv->port_up) {

  err = mlx4_en_replace_mac(priv, priv->base_qpn,
       priv->dev->dev_addr, priv->prev_mac);
  if (err)
   en_err(priv, "Failed changing HW MAC address\n");
  memcpy(priv->prev_mac, priv->dev->dev_addr,
         sizeof(priv->prev_mac));
 } else
  en_dbg(HW, priv, "Port is down while registering mac, exiting...\n");

 return err;
}
