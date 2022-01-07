
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long calc_mck_cycles(unsigned long ns, unsigned long mck_hz)
{
 unsigned long mul;
 mul = (mck_hz / 10000) << 16;
 mul /= 100000;

 return (ns * mul + 65536) >> 16;
}
