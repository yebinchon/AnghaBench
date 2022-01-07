
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crc_pair {scalar_t__ size; int offset; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_NVM ;
 int DP (int,char*,int,int) ;
 int bnx2x_nvram_crc (struct bnx2x*,int ,scalar_t__,int *) ;

__attribute__((used)) static int bnx2x_test_nvram_tbl(struct bnx2x *bp,
    const struct crc_pair *nvram_tbl, u8 *buf)
{
 int i;

 for (i = 0; nvram_tbl[i].size; i++) {
  int rc = bnx2x_nvram_crc(bp, nvram_tbl[i].offset,
      nvram_tbl[i].size, buf);
  if (rc) {
   DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
      "nvram_tbl[%d] has failed crc test (rc %d)\n",
      i, rc);
   return rc;
  }
 }

 return 0;
}
