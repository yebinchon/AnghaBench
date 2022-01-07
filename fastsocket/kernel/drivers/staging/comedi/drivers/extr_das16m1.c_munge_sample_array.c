
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short munge_sample (short) ;

__attribute__((used)) static void munge_sample_array(short *array, unsigned int num_elements)
{
 unsigned int i;

 for (i = 0; i < num_elements; i++) {
  array[i] = munge_sample(array[i]);
 }
}
