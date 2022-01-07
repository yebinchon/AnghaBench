
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct at91_cf_socket {TYPE_1__* board; } ;
struct TYPE_2__ {int det_pin; } ;


 int gpio_get_value (int ) ;

__attribute__((used)) static inline int at91_cf_present(struct at91_cf_socket *cf)
{
 return !gpio_get_value(cf->board->det_pin);
}
