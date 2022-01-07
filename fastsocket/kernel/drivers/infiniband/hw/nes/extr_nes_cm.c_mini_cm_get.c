
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_cm_core {int state; } ;



__attribute__((used)) static int mini_cm_get(struct nes_cm_core *cm_core)
{
 return cm_core->state;
}
