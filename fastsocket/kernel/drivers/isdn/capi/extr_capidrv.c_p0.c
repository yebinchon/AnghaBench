
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {size_t arg; int driver; int command; } ;
typedef TYPE_3__ isdn_ctrl ;
struct TYPE_14__ {size_t chan; } ;
typedef TYPE_4__ capidrv_plci ;
struct TYPE_12__ {int (* statcallb ) (TYPE_3__*) ;} ;
struct TYPE_15__ {TYPE_2__ interface; int myid; TYPE_1__* bchans; } ;
typedef TYPE_5__ capidrv_contr ;
struct TYPE_11__ {int * contr; } ;


 int ISDN_STAT_DHUP ;
 int free_plci (TYPE_5__*,TYPE_4__*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void p0(capidrv_contr * card, capidrv_plci * plci)
{
 isdn_ctrl cmd;

 card->bchans[plci->chan].contr = ((void*)0);
 cmd.command = ISDN_STAT_DHUP;
 cmd.driver = card->myid;
 cmd.arg = plci->chan;
 card->interface.statcallb(&cmd);
 free_plci(card, plci);
}
