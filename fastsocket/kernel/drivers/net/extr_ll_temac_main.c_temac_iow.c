
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {scalar_t__ regs; } ;


 int out_be32 (int *,int ) ;

void temac_iow(struct temac_local *lp, int offset, u32 value)
{
 out_be32((u32 *) (lp->regs + offset), value);
}
