
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SCALE (int,int ,int) ;
 int SENSORS_LIMIT (int,int ,int) ;
 int * adt7473_scaling ;

__attribute__((used)) static u8 encode_volt(int volt_index, int cooked)
{
 int raw = SCALE(cooked, adt7473_scaling[volt_index], 192);
 return SENSORS_LIMIT(raw, 0, 255);
}
