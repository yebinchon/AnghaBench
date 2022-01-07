
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fs_platform_info {int cp_command; } ;
struct fs_enet_private {struct fs_platform_info* fpi; } ;


 int cpm_command (int ,int ) ;

__attribute__((used)) static inline int scc_cr_cmd(struct fs_enet_private *fep, u32 op)
{
 const struct fs_platform_info *fpi = fep->fpi;

 return cpm_command(fpi->cp_command, op);
}
