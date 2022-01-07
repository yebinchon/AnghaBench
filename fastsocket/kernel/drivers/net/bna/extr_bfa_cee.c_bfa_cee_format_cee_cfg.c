
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_cee_attr {int lldp_remote; } ;


 int bfa_cee_format_lldp_cfg (int *) ;

__attribute__((used)) static void
bfa_cee_format_cee_cfg(void *buffer)
{
 struct bfa_cee_attr *cee_cfg = buffer;
 bfa_cee_format_lldp_cfg(&cee_cfg->lldp_remote);
}
