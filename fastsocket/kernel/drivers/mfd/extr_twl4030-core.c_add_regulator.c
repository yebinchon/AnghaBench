
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_init_data {int dummy; } ;
struct device {int dummy; } ;


 struct device* add_regulator_linked (int,struct regulator_init_data*,int *,int ) ;

__attribute__((used)) static struct device *
add_regulator(int num, struct regulator_init_data *pdata)
{
 return add_regulator_linked(num, pdata, ((void*)0), 0);
}
