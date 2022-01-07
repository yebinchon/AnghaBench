
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_init_data {unsigned int num_consumer_supplies; struct regulator_consumer_supply* consumer_supplies; } ;
struct regulator_consumer_supply {int dummy; } ;
struct device {int dummy; } ;


 struct device* add_numbered_child (int,char*,int,struct regulator_init_data*,int,int,int ,int ) ;

__attribute__((used)) static struct device *
add_regulator_linked(int num, struct regulator_init_data *pdata,
  struct regulator_consumer_supply *consumers,
  unsigned num_consumers)
{

 if (!pdata)
  return ((void*)0);

 if (consumers) {
  pdata->consumer_supplies = consumers;
  pdata->num_consumer_supplies = num_consumers;
 }


 return add_numbered_child(3, "twl4030_reg", num,
  pdata, sizeof(*pdata), 0, 0, 0);
}
