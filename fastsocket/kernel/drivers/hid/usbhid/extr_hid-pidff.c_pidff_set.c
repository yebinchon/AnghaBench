
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pidff_usage {int * value; int field; } ;


 int debug (char*,int ,int ) ;
 int pidff_rescale (int ,int,int ) ;

__attribute__((used)) static void pidff_set(struct pidff_usage *usage, u16 value)
{
 usage->value[0] = pidff_rescale(value, 0xffff, usage->field);
 debug("calculated from %d to %d", value, usage->value[0]);
}
