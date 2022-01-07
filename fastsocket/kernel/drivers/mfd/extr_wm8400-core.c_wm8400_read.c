
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wm8400 {int (* read_dev ) (int ,int,int,int *) ;int * reg_cache; int io_data; } ;
struct TYPE_2__ {scalar_t__ vol; } ;


 int ARRAY_SIZE (int *) ;
 int BUG_ON (int) ;
 int be16_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 TYPE_1__* reg_data ;
 int stub1 (int ,int,int,int *) ;

__attribute__((used)) static int wm8400_read(struct wm8400 *wm8400, u8 reg, int num_regs, u16 *dest)
{
 int i, ret = 0;

 BUG_ON(reg + num_regs - 1 > ARRAY_SIZE(wm8400->reg_cache));


 for (i = reg; i < reg + num_regs; i++)
  if (reg_data[i].vol) {
   ret = wm8400->read_dev(wm8400->io_data, reg,
            num_regs, dest);
   if (ret != 0)
    return ret;
   for (i = 0; i < num_regs; i++)
    dest[i] = be16_to_cpu(dest[i]);

   return 0;
  }


 memcpy(dest, &wm8400->reg_cache[reg], num_regs * sizeof(u16));

 return 0;
}
