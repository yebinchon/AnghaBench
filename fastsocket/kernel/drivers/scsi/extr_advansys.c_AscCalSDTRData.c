
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_4__ {int max_sdtr_index; } ;
typedef TYPE_1__ ASC_DVC_VAR ;


 int ASC_SYN_MAX_OFFSET ;
 int AscGetSynPeriodIndex (TYPE_1__*,int) ;

__attribute__((used)) static uchar
AscCalSDTRData(ASC_DVC_VAR *asc_dvc, uchar sdtr_period, uchar syn_offset)
{
 uchar byte;
 uchar sdtr_period_ix;

 sdtr_period_ix = AscGetSynPeriodIndex(asc_dvc, sdtr_period);
 if (sdtr_period_ix > asc_dvc->max_sdtr_index)
  return 0xFF;
 byte = (sdtr_period_ix << 4) | (syn_offset & ASC_SYN_MAX_OFFSET);
 return byte;
}
