
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int al_pa; int area; int domain; } ;
struct TYPE_6__ {TYPE_1__ b; } ;
struct TYPE_7__ {TYPE_2__ d_id; int vha; int state; } ;
typedef TYPE_3__ fc_port_t ;


 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int * port_state_str ;
 int ql_dbg (int ,int ,int,char*,int ,int ,int ,int ,int ) ;
 int ql_dbg_disc ;

__attribute__((used)) static inline void
qla2x00_set_fcport_state(fc_port_t *fcport, int state)
{
 int old_state;

 old_state = atomic_read(&fcport->state);
 atomic_set(&fcport->state, state);


 if (old_state && old_state != state) {
  ql_dbg(ql_dbg_disc, fcport->vha, 0x207d,
      "FCPort state transitioned from %s to %s - "
      "portid=%02x%02x%02x.\n",
      port_state_str[old_state], port_state_str[state],
      fcport->d_id.b.domain, fcport->d_id.b.area,
      fcport->d_id.b.al_pa);
 }
}
