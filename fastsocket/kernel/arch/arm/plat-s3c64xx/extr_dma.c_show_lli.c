
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl080s_lli {int control1; int control0; int next_lli; int dst_addr; int src_addr; } ;


 int pr_debug (char*,struct pl080s_lli*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void show_lli(struct pl080s_lli *lli)
{
 pr_debug("LLI[%p] %08x->%08x, NL %08x C %08x,%08x\n",
   lli, lli->src_addr, lli->dst_addr, lli->next_lli,
   lli->control0, lli->control1);
}
