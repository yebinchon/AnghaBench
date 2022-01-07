
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {int dummy; } ;
typedef enum efx_led_mode { ____Placeholder_efx_led_mode } efx_led_mode ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* set_id_led ) (struct efx_nic*,int) ;} ;


 TYPE_2__* falcon_board (struct efx_nic*) ;
 int stub1 (struct efx_nic*,int) ;

__attribute__((used)) static void falcon_set_id_led(struct efx_nic *efx, enum efx_led_mode mode)
{
 falcon_board(efx)->type->set_id_led(efx, mode);
}
