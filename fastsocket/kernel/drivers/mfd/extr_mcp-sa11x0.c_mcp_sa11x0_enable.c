
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp {int dummy; } ;


 int MCCR0_MCE ;
 int Ser4MCCR0 ;
 int Ser4MCSR ;

__attribute__((used)) static void mcp_sa11x0_enable(struct mcp *mcp)
{
 Ser4MCSR = -1;
 Ser4MCCR0 |= MCCR0_MCE;
}
