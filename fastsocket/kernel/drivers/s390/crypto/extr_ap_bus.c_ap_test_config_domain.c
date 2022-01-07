
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aqm; } ;


 TYPE_1__* ap_configuration ;
 int ap_test_config (int ,unsigned int) ;

__attribute__((used)) static inline int ap_test_config_domain(unsigned int domain)
{
 if (!ap_configuration)
  return 1;
 return ap_test_config(ap_configuration->aqm, domain);
}
