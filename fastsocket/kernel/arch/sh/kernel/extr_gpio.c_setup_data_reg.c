
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinmux_info {struct pinmux_data_reg* data_regs; int data; struct pinmux_gpio* gpios; } ;
struct pinmux_gpio {scalar_t__ enum_id; int flags; } ;
struct pinmux_data_reg {int reg_width; scalar_t__* enum_ids; } ;


 int BUG () ;
 int PINMUX_FLAG_DBIT ;
 int PINMUX_FLAG_DBIT_SHIFT ;
 int PINMUX_FLAG_DREG ;
 int PINMUX_FLAG_DREG_SHIFT ;
 int enum_in_range (scalar_t__,int *) ;

__attribute__((used)) static int setup_data_reg(struct pinmux_info *gpioc, unsigned gpio)
{
 struct pinmux_gpio *gpiop = &gpioc->gpios[gpio];
 struct pinmux_data_reg *data_reg;
 int k, n;

 if (!enum_in_range(gpiop->enum_id, &gpioc->data))
  return -1;

 k = 0;
 while (1) {
  data_reg = gpioc->data_regs + k;

  if (!data_reg->reg_width)
   break;

  for (n = 0; n < data_reg->reg_width; n++) {
   if (data_reg->enum_ids[n] == gpiop->enum_id) {
    gpiop->flags &= ~PINMUX_FLAG_DREG;
    gpiop->flags |= (k << PINMUX_FLAG_DREG_SHIFT);
    gpiop->flags &= ~PINMUX_FLAG_DBIT;
    gpiop->flags |= (n << PINMUX_FLAG_DBIT_SHIFT);
    return 0;
   }
  }
  k++;
 }

 BUG();

 return -1;
}
