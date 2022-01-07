
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_8254 {int* gate_src; int has_clk_gat_sce; } ;



__attribute__((used)) static int
dio200_get_gate_src(struct dio200_subdev_8254 *subpriv,
      unsigned int counter_number)
{
 if (!subpriv->has_clk_gat_sce)
  return -1;
 if (counter_number > 2)
  return -1;

 return subpriv->gate_src[counter_number];
}
