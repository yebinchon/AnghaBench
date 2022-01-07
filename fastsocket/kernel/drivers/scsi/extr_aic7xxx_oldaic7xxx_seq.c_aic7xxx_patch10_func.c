
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int features; } ;


 int AHC_CMD_CHAN ;

__attribute__((used)) static int
aic7xxx_patch10_func(struct aic7xxx_host *p)
{
 return ((p->features & AHC_CMD_CHAN) == 0);
}
