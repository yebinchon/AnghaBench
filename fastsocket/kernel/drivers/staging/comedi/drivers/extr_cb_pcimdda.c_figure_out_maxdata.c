
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int figure_out_maxdata(int bits)
{
 return ((unsigned int)1 << bits) - 1;
}
