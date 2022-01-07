
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;



__attribute__((used)) static u32 parity32(__le32 data)
{

 u32 par_data = *(u32 *)&data;

 par_data ^= par_data >> 16;
 par_data ^= par_data >> 8;
 par_data ^= par_data >> 4;
 par_data ^= par_data >> 2;
 par_data ^= par_data >> 1;

 return par_data & 1;
}
