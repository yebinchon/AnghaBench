
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int mcp; } ;


 int mcp_set_telecom_divisor (int ,unsigned int) ;

__attribute__((used)) static inline void ucb1x00_set_telecom_divisor(struct ucb1x00 *ucb, unsigned int div)
{
 mcp_set_telecom_divisor(ucb->mcp, div);
}
