
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct il_priv {TYPE_2__* ops; scalar_t__ eeprom; TYPE_1__* cfg; } ;
typedef int __le16 ;
struct TYPE_4__ {int (* eeprom_acquire_semaphore ) (struct il_priv*) ;int (* eeprom_release_semaphore ) (struct il_priv*) ;int (* apm_init ) (struct il_priv*) ;} ;
struct TYPE_3__ {int eeprom_size; } ;


 int CSR_EEPROM_GP ;
 int CSR_EEPROM_REG ;
 int CSR_EEPROM_REG_MSK_ADDR ;
 int CSR_EEPROM_REG_READ_VALID_MSK ;
 int D_EEPROM (char*,...) ;
 int EEPROM_VERSION ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IL_EEPROM_ACCESS_TIMEOUT ;
 int IL_ERR (char*,...) ;
 int _il_poll_bit (struct il_priv*,int ,int ,int ,int ) ;
 int _il_rd (struct il_priv*,int ) ;
 int _il_wr (struct il_priv*,int ,int) ;
 int cpu_to_le16 (int) ;
 int il_apm_stop (struct il_priv*) ;
 int il_eeprom_free (struct il_priv*) ;
 int il_eeprom_query16 (struct il_priv*,int ) ;
 int il_eeprom_verify_signature (struct il_priv*) ;
 scalar_t__ kzalloc (int,int ) ;
 int stub1 (struct il_priv*) ;
 int stub2 (struct il_priv*) ;
 int stub3 (struct il_priv*) ;

int
il_eeprom_init(struct il_priv *il)
{
 __le16 *e;
 u32 gp = _il_rd(il, CSR_EEPROM_GP);
 int sz;
 int ret;
 u16 addr;


 sz = il->cfg->eeprom_size;
 D_EEPROM("NVM size = %d\n", sz);
 il->eeprom = kzalloc(sz, GFP_KERNEL);
 if (!il->eeprom) {
  ret = -ENOMEM;
  goto alloc_err;
 }
 e = (__le16 *) il->eeprom;

 il->ops->apm_init(il);

 ret = il_eeprom_verify_signature(il);
 if (ret < 0) {
  IL_ERR("EEPROM not found, EEPROM_GP=0x%08x\n", gp);
  ret = -ENOENT;
  goto err;
 }


 ret = il->ops->eeprom_acquire_semaphore(il);
 if (ret < 0) {
  IL_ERR("Failed to acquire EEPROM semaphore.\n");
  ret = -ENOENT;
  goto err;
 }


 for (addr = 0; addr < sz; addr += sizeof(u16)) {
  u32 r;

  _il_wr(il, CSR_EEPROM_REG,
         CSR_EEPROM_REG_MSK_ADDR & (addr << 1));

  ret =
      _il_poll_bit(il, CSR_EEPROM_REG,
     CSR_EEPROM_REG_READ_VALID_MSK,
     CSR_EEPROM_REG_READ_VALID_MSK,
     IL_EEPROM_ACCESS_TIMEOUT);
  if (ret < 0) {
   IL_ERR("Time out reading EEPROM[%d]\n", addr);
   goto done;
  }
  r = _il_rd(il, CSR_EEPROM_REG);
  e[addr / 2] = cpu_to_le16(r >> 16);
 }

 D_EEPROM("NVM Type: %s, version: 0x%x\n", "EEPROM",
   il_eeprom_query16(il, EEPROM_VERSION));

 ret = 0;
done:
 il->ops->eeprom_release_semaphore(il);

err:
 if (ret)
  il_eeprom_free(il);

 il_apm_stop(il);
alloc_err:
 return ret;
}
