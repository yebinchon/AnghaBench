
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {scalar_t__ do_fw_download; struct hermes hw; } ;
struct TYPE_2__ {int (* init ) (struct hermes*) ;} ;


 int orinoco_download (struct orinoco_private*) ;
 int orinoco_hw_allocate_fid (struct orinoco_private*) ;
 int stub1 (struct hermes*) ;

__attribute__((used)) static int orinoco_reinit_firmware(struct orinoco_private *priv)
{
 struct hermes *hw = &priv->hw;
 int err;

 err = hw->ops->init(hw);
 if (priv->do_fw_download && !err) {
  err = orinoco_download(priv);
  if (err)
   priv->do_fw_download = 0;
 }
 if (!err)
  err = orinoco_hw_allocate_fid(priv);

 return err;
}
