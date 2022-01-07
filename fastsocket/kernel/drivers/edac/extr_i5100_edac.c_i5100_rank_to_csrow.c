
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {int ranksperctlr; } ;



__attribute__((used)) static unsigned i5100_rank_to_csrow(const struct mem_ctl_info *mci,
        int ctlr, int rank)
{
 const struct i5100_priv *priv = mci->pvt_info;

 return ctlr * priv->ranksperctlr + rank;
}
