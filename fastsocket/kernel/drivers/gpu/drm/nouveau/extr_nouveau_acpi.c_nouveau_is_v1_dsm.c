
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dsm_detected; } ;


 TYPE_1__ nouveau_dsm_priv ;

bool nouveau_is_v1_dsm(void) {
 return nouveau_dsm_priv.dsm_detected;
}
