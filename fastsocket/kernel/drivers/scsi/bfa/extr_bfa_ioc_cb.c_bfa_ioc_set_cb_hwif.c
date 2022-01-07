
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_s {TYPE_1__* ioc_hwif; } ;
struct TYPE_2__ {int ioc_get_alt_fwstate; int ioc_set_alt_fwstate; int ioc_get_fwstate; int ioc_set_fwstate; int ioc_sync_complete; int ioc_sync_ack; int ioc_sync_leave; int ioc_sync_join; int ioc_sync_start; int ioc_ownership_reset; int ioc_notify_fail; int ioc_isr_mode_set; int ioc_map_port; int ioc_reg_init; int ioc_firmware_unlock; int ioc_firmware_lock; int ioc_pll_init; } ;


 int bfa_ioc_cb_firmware_lock ;
 int bfa_ioc_cb_firmware_unlock ;
 int bfa_ioc_cb_get_alt_ioc_fwstate ;
 int bfa_ioc_cb_get_cur_ioc_fwstate ;
 int bfa_ioc_cb_isr_mode_set ;
 int bfa_ioc_cb_map_port ;
 int bfa_ioc_cb_notify_fail ;
 int bfa_ioc_cb_ownership_reset ;
 int bfa_ioc_cb_pll_init ;
 int bfa_ioc_cb_reg_init ;
 int bfa_ioc_cb_set_alt_ioc_fwstate ;
 int bfa_ioc_cb_set_cur_ioc_fwstate ;
 int bfa_ioc_cb_sync_ack ;
 int bfa_ioc_cb_sync_complete ;
 int bfa_ioc_cb_sync_join ;
 int bfa_ioc_cb_sync_leave ;
 int bfa_ioc_cb_sync_start ;
 TYPE_1__ hwif_cb ;

void
bfa_ioc_set_cb_hwif(struct bfa_ioc_s *ioc)
{
 hwif_cb.ioc_pll_init = bfa_ioc_cb_pll_init;
 hwif_cb.ioc_firmware_lock = bfa_ioc_cb_firmware_lock;
 hwif_cb.ioc_firmware_unlock = bfa_ioc_cb_firmware_unlock;
 hwif_cb.ioc_reg_init = bfa_ioc_cb_reg_init;
 hwif_cb.ioc_map_port = bfa_ioc_cb_map_port;
 hwif_cb.ioc_isr_mode_set = bfa_ioc_cb_isr_mode_set;
 hwif_cb.ioc_notify_fail = bfa_ioc_cb_notify_fail;
 hwif_cb.ioc_ownership_reset = bfa_ioc_cb_ownership_reset;
 hwif_cb.ioc_sync_start = bfa_ioc_cb_sync_start;
 hwif_cb.ioc_sync_join = bfa_ioc_cb_sync_join;
 hwif_cb.ioc_sync_leave = bfa_ioc_cb_sync_leave;
 hwif_cb.ioc_sync_ack = bfa_ioc_cb_sync_ack;
 hwif_cb.ioc_sync_complete = bfa_ioc_cb_sync_complete;
 hwif_cb.ioc_set_fwstate = bfa_ioc_cb_set_cur_ioc_fwstate;
 hwif_cb.ioc_get_fwstate = bfa_ioc_cb_get_cur_ioc_fwstate;
 hwif_cb.ioc_set_alt_fwstate = bfa_ioc_cb_set_alt_ioc_fwstate;
 hwif_cb.ioc_get_alt_fwstate = bfa_ioc_cb_get_alt_ioc_fwstate;

 ioc->ioc_hwif = &hwif_cb;
}
