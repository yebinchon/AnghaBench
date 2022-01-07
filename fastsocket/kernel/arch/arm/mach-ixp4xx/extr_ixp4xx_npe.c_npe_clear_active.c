
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct npe {int dummy; } ;


 int CMD_RD_ECS_REG ;
 int CMD_WR_ECS_REG ;
 int ECS_REG_0_ACTIVE ;
 int npe_cmd_read (struct npe*,int,int ) ;
 int npe_cmd_write (struct npe*,int,int ,int) ;

__attribute__((used)) static void npe_clear_active(struct npe *npe, u32 reg)
{
 u32 val = npe_cmd_read(npe, reg, CMD_RD_ECS_REG);
 npe_cmd_write(npe, reg, CMD_WR_ECS_REG, val & ~ECS_REG_0_ACTIVE);
}
