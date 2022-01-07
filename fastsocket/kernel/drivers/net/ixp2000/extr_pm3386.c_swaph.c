
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16 swaph(u16 x)
{
 return ((x << 8) | (x >> 8)) & 0xffff;
}
