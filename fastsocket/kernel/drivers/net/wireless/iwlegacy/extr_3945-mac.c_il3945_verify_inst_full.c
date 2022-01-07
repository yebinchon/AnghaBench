
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct il_priv {int dummy; } ;
typedef int __le32 ;


 int D_INFO (char*,...) ;
 int EIO ;
 int HBUS_TARG_MEM_RADDR ;
 int HBUS_TARG_MEM_RDAT ;
 int IL39_RTC_INST_LOWER_BOUND ;
 int IL_ERR (char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ _il_rd (struct il_priv*,int ) ;
 int il_wr (struct il_priv*,int ,int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int
il3945_verify_inst_full(struct il_priv *il, __le32 * image, u32 len)
{
 u32 val;
 u32 save_len = len;
 int rc = 0;
 u32 errcnt;

 D_INFO("ucode inst image size is %u\n", len);

 il_wr(il, HBUS_TARG_MEM_RADDR, IL39_RTC_INST_LOWER_BOUND);

 errcnt = 0;
 for (; len > 0; len -= sizeof(u32), image++) {



  val = _il_rd(il, HBUS_TARG_MEM_RDAT);
  if (val != le32_to_cpu(*image)) {
   IL_ERR("uCode INST section is invalid at "
          "offset 0x%x, is 0x%x, s/b 0x%x\n",
          save_len - len, val, le32_to_cpu(*image));
   rc = -EIO;
   errcnt++;
   if (errcnt >= 20)
    break;
  }
 }

 if (!errcnt)
  D_INFO("ucode image in INSTRUCTION memory is good\n");

 return rc;
}
