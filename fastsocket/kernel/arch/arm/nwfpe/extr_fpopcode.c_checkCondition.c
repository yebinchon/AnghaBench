
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int const* aCC ;

unsigned int checkCondition(const unsigned int opcode, const unsigned int ccodes)
{
 return (aCC[opcode >> 28] >> (ccodes >> 28)) & 1;
}
