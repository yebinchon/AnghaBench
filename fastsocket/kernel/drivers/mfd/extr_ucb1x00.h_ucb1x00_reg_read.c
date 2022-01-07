
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int mcp; } ;


 unsigned int mcp_reg_read (int ,unsigned int) ;

__attribute__((used)) static inline unsigned int ucb1x00_reg_read(struct ucb1x00 *ucb, unsigned int reg)
{
 return mcp_reg_read(ucb->mcp, reg);
}
