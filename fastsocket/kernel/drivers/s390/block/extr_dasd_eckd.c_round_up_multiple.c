
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int
round_up_multiple(unsigned int no, unsigned int mult)
{
 int rem = no % mult;
 return (rem ? no - rem + mult : no);
}
