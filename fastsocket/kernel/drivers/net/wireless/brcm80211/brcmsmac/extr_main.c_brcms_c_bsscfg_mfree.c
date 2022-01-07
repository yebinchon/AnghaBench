
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_bss_cfg {struct brcms_bss_cfg* current_bss; } ;


 int kfree (struct brcms_bss_cfg*) ;

__attribute__((used)) static void brcms_c_bsscfg_mfree(struct brcms_bss_cfg *cfg)
{
 if (cfg == ((void*)0))
  return;

 kfree(cfg->current_bss);
 kfree(cfg);
}
