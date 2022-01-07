
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
struct TYPE_2__ {int bc_ver; } ;
struct bnx2x {TYPE_1__ common; int fw_ver; int link_params; } ;


 scalar_t__ IS_PF (struct bnx2x*) ;
 int PHY_FW_VER_LEN ;
 int bnx2x_get_ext_phy_fw_version (int *,char*,int) ;
 int bnx2x_vf_fill_fw_str (struct bnx2x*,char*,size_t) ;
 int snprintf (char*,int,char*,int,int,int,char*,char*) ;
 int strlcpy (char*,int ,size_t) ;
 int strlen (int ) ;

void bnx2x_fill_fw_str(struct bnx2x *bp, char *buf, size_t buf_len)
{
 if (IS_PF(bp)) {
  u8 phy_fw_ver[PHY_FW_VER_LEN];

  phy_fw_ver[0] = '\0';
  bnx2x_get_ext_phy_fw_version(&bp->link_params,
          phy_fw_ver, PHY_FW_VER_LEN);
  strlcpy(buf, bp->fw_ver, buf_len);
  snprintf(buf + strlen(bp->fw_ver), 32 - strlen(bp->fw_ver),
    "bc %d.%d.%d%s%s",
    (bp->common.bc_ver & 0xff0000) >> 16,
    (bp->common.bc_ver & 0xff00) >> 8,
    (bp->common.bc_ver & 0xff),
    ((phy_fw_ver[0] != '\0') ? " phy " : ""), phy_fw_ver);
 } else {
  bnx2x_vf_fill_fw_str(bp, buf, buf_len);
 }
}
