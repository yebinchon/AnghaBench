
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_init {int offset; int bios; } ;
struct nouveau_gpio {int (* reset ) (struct nouveau_gpio*,int ) ;} ;


 int DCB_GPIO_UNUSED ;
 scalar_t__ init_exec (struct nvbios_init*) ;
 struct nouveau_gpio* nouveau_gpio (int ) ;
 int stub1 (struct nouveau_gpio*,int ) ;
 int trace (char*) ;

__attribute__((used)) static void
init_gpio(struct nvbios_init *init)
{
 struct nouveau_gpio *gpio = nouveau_gpio(init->bios);

 trace("GPIO\n");
 init->offset += 1;

 if (init_exec(init) && gpio && gpio->reset)
  gpio->reset(gpio, DCB_GPIO_UNUSED);
}
