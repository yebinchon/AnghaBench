
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {size_t chan; TYPE_3__* ncci_list; } ;
typedef TYPE_2__ capidrv_plci ;
struct TYPE_11__ {size_t chan; struct TYPE_11__* next; scalar_t__ datahandle; TYPE_2__* plcip; int state; int ncci; } ;
typedef TYPE_3__ capidrv_ncci ;
struct TYPE_12__ {TYPE_1__* bchans; } ;
typedef TYPE_4__ capidrv_contr ;
struct TYPE_9__ {TYPE_3__* nccip; } ;


 int GFP_ATOMIC ;
 int ST_NCCI_NONE ;
 TYPE_3__* kzalloc (int,int ) ;

__attribute__((used)) static inline capidrv_ncci *new_ncci(capidrv_contr * card,
         capidrv_plci * plcip,
         u32 ncci)
{
 capidrv_ncci *nccip;

 nccip = kzalloc(sizeof(capidrv_ncci), GFP_ATOMIC);

 if (nccip == ((void*)0))
  return ((void*)0);

 nccip->ncci = ncci;
 nccip->state = ST_NCCI_NONE;
 nccip->plcip = plcip;
 nccip->chan = plcip->chan;
 nccip->datahandle = 0;

 nccip->next = plcip->ncci_list;
 plcip->ncci_list = nccip;

 card->bchans[plcip->chan].nccip = nccip;

 return nccip;
}
