
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_controller {int dummy; } ;


 int i2o_dump_hrt (struct i2o_controller*) ;

__attribute__((used)) static int i2o_parse_hrt(struct i2o_controller *c)
{
 i2o_dump_hrt(c);
 return 0;
}
