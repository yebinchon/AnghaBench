
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dhandle; int optimus_detected; } ;


 int NOUVEAU_DSM_OPTIMUS_ARGS ;
 int NOUVEAU_DSM_OPTIMUS_FN ;
 TYPE_1__ nouveau_dsm_priv ;
 int nouveau_optimus_dsm (int ,int ,int ,int *) ;

void nouveau_switcheroo_optimus_dsm(void)
{
 u32 result = 0;
 if (!nouveau_dsm_priv.optimus_detected)
  return;

 nouveau_optimus_dsm(nouveau_dsm_priv.dhandle, NOUVEAU_DSM_OPTIMUS_FN,
  NOUVEAU_DSM_OPTIMUS_ARGS, &result);
}
