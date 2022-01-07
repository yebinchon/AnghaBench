
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* exd; } ;
struct TYPE_5__ {int* ipacket; TYPE_1__ di_scratch; } ;
typedef TYPE_2__ hil_mlc ;


 int HILSEN_NEXT ;
 int HIL_EXD_HEADER_RNM ;
 int HIL_PKT_DATA_MASK ;

__attribute__((used)) static int hilse_take_exd(hil_mlc *mlc, int unused)
{
 int i;

 for (i = 0; i < 16; i++)
  mlc->di_scratch.exd[i] =
   mlc->ipacket[i] & HIL_PKT_DATA_MASK;


 if (mlc->di_scratch.exd[0] & HIL_EXD_HEADER_RNM)
  return HILSEN_NEXT;

 return 0;
}
