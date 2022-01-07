
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct firmware {int size; scalar_t__ data; } ;
struct bdx_priv {TYPE_2__* ndev; TYPE_1__* pdev; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int dev; } ;


 int DBG (char*,int,...) ;
 int EIO ;
 int ENTER ;
 int ERR (char*,int ) ;
 int READ_REG (struct bdx_priv*,int ) ;
 int RET (int) ;
 int WRITE_REG (struct bdx_priv*,int ,int) ;
 int bdx_tx_push_desc_safe (struct bdx_priv*,char*,int ) ;
 int mdelay (int) ;
 int regINIT_SEMAPHORE ;
 int regINIT_STATUS ;
 int regVIC ;
 int regVPC ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;

__attribute__((used)) static int bdx_fw_load(struct bdx_priv *priv)
{
 const struct firmware *fw = ((void*)0);
 int master, i;
 int rc;

 ENTER;
 master = READ_REG(priv, regINIT_SEMAPHORE);
 if (!READ_REG(priv, regINIT_STATUS) && master) {
  rc = request_firmware(&fw, "tehuti/firmware.bin", &priv->pdev->dev);
  if (rc)
   goto out;
  bdx_tx_push_desc_safe(priv, (char *)fw->data, fw->size);
  mdelay(100);
 }
 for (i = 0; i < 200; i++) {
  if (READ_REG(priv, regINIT_STATUS)) {
   rc = 0;
   goto out;
  }
  mdelay(2);
 }
 rc = -EIO;
out:
 if (master)
  WRITE_REG(priv, regINIT_SEMAPHORE, 1);
 if (fw)
  release_firmware(fw);

 if (rc) {
  ERR("%s: firmware loading failed\n", priv->ndev->name);
  if (rc == -EIO)
   DBG("VPC = 0x%x VIC = 0x%x INIT_STATUS = 0x%x i=%d\n",
       READ_REG(priv, regVPC),
       READ_REG(priv, regVIC),
       READ_REG(priv, regINIT_STATUS), i);
  RET(rc);
 } else {
  DBG("%s: firmware loading success\n", priv->ndev->name);
  RET(0);
 }
}
