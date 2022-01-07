
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_fcs_lport_s {TYPE_1__* fcs; TYPE_3__* fabric; } ;
struct TYPE_9__ {int fwwn; int pwwn; } ;
struct TYPE_10__ {TYPE_4__ port; } ;
struct bfa_aen_entry_s {TYPE_5__ aen_data; } ;
typedef enum bfa_port_aen_event { ____Placeholder_bfa_port_aen_event } bfa_port_aen_event ;
struct TYPE_8__ {TYPE_2__* fcs; } ;
struct TYPE_7__ {scalar_t__ bfad; } ;
struct TYPE_6__ {int fcs_aen_seq; } ;


 int BFA_AEN_CAT_PORT ;
 int bfa_fcs_lport_get_fabric_name (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_get_pwwn (struct bfa_fcs_lport_s*) ;
 int bfad_get_aen_entry (struct bfad_s*,struct bfa_aen_entry_s*) ;
 int bfad_im_post_vendor_event (struct bfa_aen_entry_s*,struct bfad_s*,int ,int ,int) ;

__attribute__((used)) static void
bfa_fcs_fabric_aen_post(struct bfa_fcs_lport_s *port,
   enum bfa_port_aen_event event)
{
 struct bfad_s *bfad = (struct bfad_s *)port->fabric->fcs->bfad;
 struct bfa_aen_entry_s *aen_entry;

 bfad_get_aen_entry(bfad, aen_entry);
 if (!aen_entry)
  return;

 aen_entry->aen_data.port.pwwn = bfa_fcs_lport_get_pwwn(port);
 aen_entry->aen_data.port.fwwn = bfa_fcs_lport_get_fabric_name(port);


 bfad_im_post_vendor_event(aen_entry, bfad, ++port->fcs->fcs_aen_seq,
      BFA_AEN_CAT_PORT, event);
}
