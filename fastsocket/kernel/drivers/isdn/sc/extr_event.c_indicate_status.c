
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_6__ {int num; int setup; int length; } ;
struct TYPE_8__ {int command; int arg; int driver; TYPE_1__ parm; } ;
typedef TYPE_3__ isdn_ctrl ;
struct TYPE_9__ {TYPE_2__* card; int driverId; int devicename; } ;
struct TYPE_7__ {int (* statcallb ) (TYPE_3__*) ;} ;




 int * events ;
 int memcpy (int *,char*,int) ;
 int pr_debug (char*,int ,char*,...) ;
 TYPE_5__** sc_adapter ;
 int strcpy (int ,char*) ;
 int stub1 (TYPE_3__*) ;

int indicate_status(int card, int event,ulong Channel,char *Data)
{
 isdn_ctrl cmd;





 if (Data != ((void*)0)){
  pr_debug("%s: Event data: %s\n", sc_adapter[card]->devicename,
   Data);
  switch (event) {
   case 129:
    memcpy(&cmd.parm.length, Data, sizeof(cmd.parm.length));
    break;
   case 128:
    memcpy(&cmd.parm.setup, Data, sizeof(cmd.parm.setup));
    break;
   default:
    strcpy(cmd.parm.num, Data);
  }
 }

 cmd.command = event;
 cmd.driver = sc_adapter[card]->driverId;
 cmd.arg = Channel;
 return sc_adapter[card]->card->statcallb(&cmd);
}
