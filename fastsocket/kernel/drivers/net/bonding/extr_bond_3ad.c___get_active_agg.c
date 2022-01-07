
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aggregator {scalar_t__ is_active; } ;


 struct aggregator* __get_next_agg (struct aggregator*) ;

__attribute__((used)) static struct aggregator *__get_active_agg(struct aggregator *aggregator)
{
 struct aggregator *retval = ((void*)0);

 for (; aggregator; aggregator = __get_next_agg(aggregator)) {
  if (aggregator->is_active) {
   retval = aggregator;
   break;
  }
 }

 return retval;
}
