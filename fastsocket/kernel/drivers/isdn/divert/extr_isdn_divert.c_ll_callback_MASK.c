#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int command; int arg; } ;
typedef  TYPE_1__ isdn_ctrl ;

/* Variables and functions */
 int DSS1_STAT_INVOKE_BRD ; 
 int ISDN_PTYPE_EURO ; 
#define  ISDN_STAT_ICALL 130 
#define  ISDN_STAT_ICALLW 129 
#define  ISDN_STAT_PROT 128 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(isdn_ctrl *ic)
{
  switch (ic->command)
   { case ISDN_STAT_ICALL:
     case ISDN_STAT_ICALLW:
       return(FUNC0(ic));
     break;

     case ISDN_STAT_PROT:
       if ((ic->arg & 0xFF) == ISDN_PTYPE_EURO)
	{ if (ic->arg != DSS1_STAT_INVOKE_BRD)
            return(FUNC2(ic));
          else
            return(0); /* DSS1 invoke broadcast */
        }
       else
         return(-1); /* protocol not euro */    

     default:
       return(FUNC1(ic));
   }
}