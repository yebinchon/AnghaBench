
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83627hf_data {int vrm_ovt; scalar_t__ type; } ;
typedef int ssize_t ;


 scalar_t__ IN_FROM_REG (int) ;
 int sprintf (char*,char*,long) ;
 scalar_t__ w83627thf ;
 scalar_t__ w83637hf ;
 scalar_t__ w83687thf ;

__attribute__((used)) static ssize_t show_in_0(struct w83627hf_data *data, char *buf, u8 reg)
{
 long in0;

 if ((data->vrm_ovt & 0x01) &&
  (w83627thf == data->type || w83637hf == data->type
   || w83687thf == data->type))


  in0 = (long)((reg * 488 + 70000 + 50) / 100);
 else

  in0 = (long)IN_FROM_REG(reg);

 return sprintf(buf,"%ld\n", in0);
}
