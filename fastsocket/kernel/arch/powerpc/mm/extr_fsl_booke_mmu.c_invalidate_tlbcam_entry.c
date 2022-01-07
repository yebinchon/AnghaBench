
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MAS0; int MAS1; } ;


 int MAS0_ESEL (int) ;
 int MAS0_TLBSEL (int) ;
 int MAS1_VALID ;
 TYPE_1__* TLBCAM ;
 int loadcam_entry (int) ;

void invalidate_tlbcam_entry(int index)
{
 TLBCAM[index].MAS0 = MAS0_TLBSEL(1) | MAS0_ESEL(index);
 TLBCAM[index].MAS1 = ~MAS1_VALID;

 loadcam_entry(index);
}
