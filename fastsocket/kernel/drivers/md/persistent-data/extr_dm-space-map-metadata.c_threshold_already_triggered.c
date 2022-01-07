
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threshold {int current_value; scalar_t__ value_set; } ;


 scalar_t__ below_threshold (struct threshold*,int ) ;

__attribute__((used)) static bool threshold_already_triggered(struct threshold *t)
{
 return t->value_set && below_threshold(t, t->current_value);
}
