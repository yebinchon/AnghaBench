
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {int wmi; } ;
typedef int buf ;
typedef int __be32 ;


 int WMI ;
 int WMI_REG_WRITE_CMDID ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_wmi_cmd (int ,int ,int *,int,int *,int,int) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int) ;
 int const cpu_to_be32 (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ath9k_regwrite_single(void *hw_priv, u32 val, u32 reg_offset)
{
 struct ath_hw *ah = (struct ath_hw *) hw_priv;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;
 const __be32 buf[2] = {
  cpu_to_be32(reg_offset),
  cpu_to_be32(val),
 };
 int r;

 r = ath9k_wmi_cmd(priv->wmi, WMI_REG_WRITE_CMDID,
     (u8 *) &buf, sizeof(buf),
     (u8 *) &val, sizeof(val),
     100);
 if (unlikely(r)) {
  ath_dbg(common, WMI, "REGISTER WRITE FAILED:(0x%04x, %d)\n",
   reg_offset, r);
 }
}
