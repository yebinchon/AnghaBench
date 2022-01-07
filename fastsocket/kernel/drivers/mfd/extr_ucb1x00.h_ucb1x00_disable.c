
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int mcp; } ;


 int mcp_disable (int ) ;

__attribute__((used)) static inline void ucb1x00_disable(struct ucb1x00 *ucb)
{
 mcp_disable(ucb->mcp);
}
