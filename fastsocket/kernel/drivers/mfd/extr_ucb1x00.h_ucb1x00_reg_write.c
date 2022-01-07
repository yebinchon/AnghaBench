
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int mcp; } ;


 int mcp_reg_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static inline void ucb1x00_reg_write(struct ucb1x00 *ucb, unsigned int reg, unsigned int val)
{
 mcp_reg_write(ucb->mcp, reg, val);
}
