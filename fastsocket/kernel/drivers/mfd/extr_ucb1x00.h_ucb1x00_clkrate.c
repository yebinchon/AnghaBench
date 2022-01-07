
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int mcp; } ;


 unsigned int mcp_get_sclk_rate (int ) ;

__attribute__((used)) static inline unsigned int ucb1x00_clkrate(struct ucb1x00 *ucb)
{
 return mcp_get_sclk_rate(ucb->mcp);
}
