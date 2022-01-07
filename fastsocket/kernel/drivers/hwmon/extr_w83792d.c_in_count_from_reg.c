
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83792d_data {int* in; int low_bits; } ;



__attribute__((used)) static inline long in_count_from_reg(int nr, struct w83792d_data *data)
{

 return ((data->in[nr] << 2) | ((data->low_bits >> (2 * nr)) & 0x03));
}
