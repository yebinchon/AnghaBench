
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct il_priv {int dummy; } ;
typedef int __le32 ;


 int D_INFO (char*,scalar_t__) ;
 int EIO ;
 int HBUS_TARG_MEM_RADDR ;
 int HBUS_TARG_MEM_RDAT ;
 scalar_t__ IL39_RTC_INST_LOWER_BOUND ;
 int IL_ERR (char*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ _il_rd (struct il_priv*,int ) ;
 int il_wr (struct il_priv*,int ,scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int
il3945_verify_inst_sparse(struct il_priv *il, __le32 * image, u32 len)
{
 u32 val;
 int rc = 0;
 u32 errcnt = 0;
 u32 i;

 D_INFO("ucode inst image size is %u\n", len);

 for (i = 0; i < len; i += 100, image += 100 / sizeof(u32)) {



  il_wr(il, HBUS_TARG_MEM_RADDR, i + IL39_RTC_INST_LOWER_BOUND);
  val = _il_rd(il, HBUS_TARG_MEM_RDAT);
  if (val != le32_to_cpu(*image)) {





   rc = -EIO;
   errcnt++;
   if (errcnt >= 3)
    break;
  }
 }

 return rc;
}
