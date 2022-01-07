
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int command; int arg; } ;
typedef TYPE_1__ isdn_ctrl ;


 int DSS1_STAT_INVOKE_BRD ;
 int ISDN_PTYPE_EURO ;



 int isdn_divert_icall (TYPE_1__*) ;
 int isdn_divert_stat_callback (TYPE_1__*) ;
 int prot_stat_callback (TYPE_1__*) ;

int ll_callback(isdn_ctrl *ic)
{
  switch (ic->command)
   { case 130:
     case 129:
       return(isdn_divert_icall(ic));
     break;

     case 128:
       if ((ic->arg & 0xFF) == ISDN_PTYPE_EURO)
 { if (ic->arg != DSS1_STAT_INVOKE_BRD)
            return(prot_stat_callback(ic));
          else
            return(0);
        }
       else
         return(-1);

     default:
       return(isdn_divert_stat_callback(ic));
   }
}
