
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t word ;
typedef int byte ;
struct TYPE_3__ {size_t u_law; } ;
typedef TYPE_1__ DIVA_CAPI_ADAPTER ;


 int ** cip_bc ;
 int * cip_hlc ;
 int ie_compare (int *,int ) ;

__attribute__((used)) static word find_cip(DIVA_CAPI_ADAPTER *a, byte *bc, byte *hlc)
{
  word i;
  word j;

  for(i=9;i && !ie_compare(bc,cip_bc[i][a->u_law]);i--);

  for(j=16;j<29 &&
           (!ie_compare(bc,cip_bc[j][a->u_law]) || !ie_compare(hlc,cip_hlc[j])); j++);
  if(j==29) return i;
  return j;
}
