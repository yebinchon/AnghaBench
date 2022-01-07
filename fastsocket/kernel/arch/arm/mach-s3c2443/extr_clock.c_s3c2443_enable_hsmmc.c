
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int s3c2443_setparent_hsmmc (struct clk*,int ) ;

__attribute__((used)) static int s3c2443_enable_hsmmc(struct clk *clk, int enable)
{
 return s3c2443_setparent_hsmmc(clk, clk->parent);
}
