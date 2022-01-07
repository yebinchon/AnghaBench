
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_priv {int fw_helper; int fw_ucode; } ;


 int mwl8k_release_fw (int *) ;

__attribute__((used)) static void mwl8k_release_firmware(struct mwl8k_priv *priv)
{
 mwl8k_release_fw(&priv->fw_ucode);
 mwl8k_release_fw(&priv->fw_helper);
}
