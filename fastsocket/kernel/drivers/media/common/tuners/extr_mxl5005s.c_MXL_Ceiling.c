
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 MXL_Ceiling(u32 value, u32 resolution)
{
 return value / resolution + (value % resolution > 0 ? 1 : 0);
}
