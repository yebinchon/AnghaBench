
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int firmware_type; } ;





 int orinoco_dl_firmware (struct orinoco_private*,int *,int ) ;
 int * orinoco_fw ;
 int symbol_dl_firmware (struct orinoco_private*,int *) ;

int orinoco_download(struct orinoco_private *priv)
{
 int err = 0;

 switch (priv->firmware_type) {
 case 130:

  err = orinoco_dl_firmware(priv,
       &orinoco_fw[priv->firmware_type], 0);
  break;

 case 128:
  err = symbol_dl_firmware(priv,
      &orinoco_fw[priv->firmware_type]);
  break;
 case 129:
  break;
 }



 return err;
}
