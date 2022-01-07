
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_dconf_s {int dummy; } ;
struct bfa_dconf_mod_s {int bfa; int dconf; int instance; } ;
typedef scalar_t__ bfa_status_t ;


 int BFA_FLASH (int ) ;
 int BFA_FLASH_PART_DRV ;
 scalar_t__ BFA_STATUS_OK ;
 int WARN_ON (scalar_t__) ;
 int bfa_dconf_cbfn ;
 scalar_t__ bfa_flash_update_part (int ,int ,int ,int ,int,int ,int ,struct bfa_dconf_mod_s*) ;
 int bfa_trc (int ,scalar_t__) ;

__attribute__((used)) static bfa_status_t
bfa_dconf_flash_write(struct bfa_dconf_mod_s *dconf)
{
 bfa_status_t bfa_status;
 bfa_trc(dconf->bfa, 0);

 bfa_status = bfa_flash_update_part(BFA_FLASH(dconf->bfa),
    BFA_FLASH_PART_DRV, dconf->instance,
    dconf->dconf, sizeof(struct bfa_dconf_s), 0,
    bfa_dconf_cbfn, dconf);
 if (bfa_status != BFA_STATUS_OK)
  WARN_ON(bfa_status);
 bfa_trc(dconf->bfa, bfa_status);

 return bfa_status;
}
