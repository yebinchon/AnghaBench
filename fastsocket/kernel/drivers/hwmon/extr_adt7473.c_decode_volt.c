
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SCALE (int ,int,int ) ;
 int * adt7473_scaling ;

__attribute__((used)) static int decode_volt(int volt_index, u8 raw)
{
 return SCALE(raw, 192, adt7473_scaling[volt_index]);
}
