
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fab_cleanup; } ;
struct bfa_fcs_vport_s {TYPE_1__ vport_stats; } ;



void
bfa_fcs_vport_cleanup(struct bfa_fcs_vport_s *vport)
{
 vport->vport_stats.fab_cleanup++;
}
