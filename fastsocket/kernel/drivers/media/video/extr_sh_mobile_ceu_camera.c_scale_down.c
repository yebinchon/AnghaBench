
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int scale_down(unsigned int size, unsigned int scale)
{
 return (size * 4096 + scale / 2) / scale;
}
