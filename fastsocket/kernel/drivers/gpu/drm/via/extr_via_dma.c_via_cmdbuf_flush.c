
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int drm_via_private_t ;


 int via_align_cmd (int *,int ,int ,int *,int *,int ) ;
 int via_hook_segment (int *,int ,int ,int ) ;

__attribute__((used)) static void via_cmdbuf_flush(drm_via_private_t *dev_priv, uint32_t cmd_type)
{
 uint32_t pause_addr_lo, pause_addr_hi;

 via_align_cmd(dev_priv, cmd_type, 0, &pause_addr_hi, &pause_addr_lo, 0);
 via_hook_segment(dev_priv, pause_addr_hi, pause_addr_lo, 0);
}
