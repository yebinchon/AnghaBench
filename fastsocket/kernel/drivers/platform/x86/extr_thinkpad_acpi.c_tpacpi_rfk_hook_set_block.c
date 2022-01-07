
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpacpi_rfk {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_status ) (int ) ;} ;


 int TPACPI_DBG_RFKILL ;
 int TPACPI_RFK_RADIO_OFF ;
 int TPACPI_RFK_RADIO_ON ;
 int dbg_printk (int ,char*,char*) ;
 int stub1 (int ) ;
 int tpacpi_rfk_update_swstate (struct tpacpi_rfk*) ;

__attribute__((used)) static int tpacpi_rfk_hook_set_block(void *data, bool blocked)
{
 struct tpacpi_rfk *tp_rfk = data;
 int res;

 dbg_printk(TPACPI_DBG_RFKILL,
     "request to change radio state to %s\n",
     blocked ? "blocked" : "unblocked");


 res = (tp_rfk->ops->set_status)(blocked ?
    TPACPI_RFK_RADIO_OFF : TPACPI_RFK_RADIO_ON);


 tpacpi_rfk_update_swstate(tp_rfk);

 return (res < 0) ? res : 0;
}
