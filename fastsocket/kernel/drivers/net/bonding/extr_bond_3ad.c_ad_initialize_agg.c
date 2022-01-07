
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aggregator {int * slave; scalar_t__ aggregator_identifier; int aggregator_mac_address; } ;


 int ad_clear_agg (struct aggregator*) ;
 int null_mac_addr ;

__attribute__((used)) static void ad_initialize_agg(struct aggregator *aggregator)
{
 if (aggregator) {
  ad_clear_agg(aggregator);

  aggregator->aggregator_mac_address = null_mac_addr;
  aggregator->aggregator_identifier = 0;
  aggregator->slave = ((void*)0);
 }
}
