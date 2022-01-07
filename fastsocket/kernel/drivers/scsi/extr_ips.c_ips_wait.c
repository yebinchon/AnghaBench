
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* intr ) (TYPE_2__*) ;} ;
struct TYPE_6__ {int waitflag; TYPE_1__ func; } ;
typedef TYPE_2__ ips_ha_t ;


 int FALSE ;
 int IPS_FAILURE ;
 int IPS_INTR_IORL ;
 int IPS_INTR_ON ;
 int IPS_ONE_SEC ;
 int IPS_SUCCESS ;
 int METHOD_TRACE (char*,int) ;
 int TRUE ;
 int stub1 (TYPE_2__*) ;
 int udelay (int) ;

__attribute__((used)) static int
ips_wait(ips_ha_t * ha, int time, int intr)
{
 int ret;
 int done;

 METHOD_TRACE("ips_wait", 1);

 ret = IPS_FAILURE;
 done = FALSE;

 time *= IPS_ONE_SEC;

 while ((time > 0) && (!done)) {
  if (intr == IPS_INTR_ON) {
   if (ha->waitflag == FALSE) {
    ret = IPS_SUCCESS;
    done = TRUE;
    break;
   }
  } else if (intr == IPS_INTR_IORL) {
   if (ha->waitflag == FALSE) {





    ret = IPS_SUCCESS;
    done = TRUE;
    break;
   }







   (*ha->func.intr) (ha);
  }


  udelay(1000);
  time--;
 }

 return (ret);
}
