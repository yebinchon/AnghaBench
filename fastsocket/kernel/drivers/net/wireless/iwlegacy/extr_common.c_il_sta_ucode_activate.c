
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct il_priv {TYPE_3__* stations; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_5__ {TYPE_1__ sta; } ;
struct TYPE_6__ {int used; TYPE_2__ sta; } ;


 int D_ASSOC (char*,size_t,int ) ;
 int IL_ERR (char*,size_t,int ) ;
 int IL_STA_DRIVER_ACTIVE ;
 int IL_STA_UCODE_ACTIVE ;

__attribute__((used)) static void
il_sta_ucode_activate(struct il_priv *il, u8 sta_id)
{

 if (!(il->stations[sta_id].used & IL_STA_DRIVER_ACTIVE))
  IL_ERR("ACTIVATE a non DRIVER active station id %u addr %pM\n",
         sta_id, il->stations[sta_id].sta.sta.addr);

 if (il->stations[sta_id].used & IL_STA_UCODE_ACTIVE) {
  D_ASSOC("STA id %u addr %pM already present"
   " in uCode (according to driver)\n", sta_id,
   il->stations[sta_id].sta.sta.addr);
 } else {
  il->stations[sta_id].used |= IL_STA_UCODE_ACTIVE;
  D_ASSOC("Added STA id %u addr %pM to uCode\n", sta_id,
   il->stations[sta_id].sta.sta.addr);
 }
}
