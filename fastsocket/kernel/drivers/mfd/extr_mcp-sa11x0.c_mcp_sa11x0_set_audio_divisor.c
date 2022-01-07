
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp {int dummy; } ;


 int Ser4MCCR0 ;

__attribute__((used)) static void
mcp_sa11x0_set_audio_divisor(struct mcp *mcp, unsigned int divisor)
{
 unsigned int mccr0;

 divisor /= 32;

 mccr0 = Ser4MCCR0 & ~0x0000007f;
 mccr0 |= divisor;
 Ser4MCCR0 = mccr0;
}
