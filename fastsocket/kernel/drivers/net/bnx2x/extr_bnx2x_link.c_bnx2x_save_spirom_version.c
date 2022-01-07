
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int ,int ,int ) ;
 int NETIF_MSG_LINK ;
 int REG_WR (struct bnx2x*,int,int) ;

__attribute__((used)) static void bnx2x_save_spirom_version(struct bnx2x *bp, u8 port,
          u32 spirom_ver, u32 ver_addr)
{
 DP(NETIF_MSG_LINK, "FW version 0x%x:0x%x for port %d\n",
   (u16)(spirom_ver>>16), (u16)spirom_ver, port);

 if (ver_addr)
  REG_WR(bp, ver_addr, spirom_ver);
}
