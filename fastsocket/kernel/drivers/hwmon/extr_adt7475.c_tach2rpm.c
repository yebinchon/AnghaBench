
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline int tach2rpm(u16 tach)
{
 if (tach == 0 || tach == 0xFFFF)
  return 0;

 return (90000 * 60) / tach;
}
