
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ampdu_info {TYPE_1__* wlc; } ;
struct TYPE_2__ {int pri_scb; } ;


 int brcms_c_scb_ampdu_update_config (struct ampdu_info*,int *) ;

__attribute__((used)) static void brcms_c_scb_ampdu_update_config_all(struct ampdu_info *ampdu)
{
 brcms_c_scb_ampdu_update_config(ampdu, &ampdu->wlc->pri_scb);
}
