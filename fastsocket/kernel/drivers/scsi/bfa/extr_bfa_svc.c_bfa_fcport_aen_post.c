
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_fcport_s {TYPE_3__* bfa; int pwwn; } ;
struct TYPE_5__ {int pwwn; int ioc_type; } ;
struct TYPE_4__ {TYPE_2__ port; } ;
struct bfa_aen_entry_s {TYPE_1__ aen_data; } ;
typedef enum bfa_port_aen_event { ____Placeholder_bfa_port_aen_event } bfa_port_aen_event ;
struct TYPE_6__ {int bfa_aen_seq; scalar_t__ bfad; } ;


 int BFA_AEN_CAT_PORT ;
 int bfa_get_type (TYPE_3__*) ;
 int bfad_get_aen_entry (struct bfad_s*,struct bfa_aen_entry_s*) ;
 int bfad_im_post_vendor_event (struct bfa_aen_entry_s*,struct bfad_s*,int ,int ,int) ;

__attribute__((used)) static void
bfa_fcport_aen_post(struct bfa_fcport_s *fcport, enum bfa_port_aen_event event)
{
 struct bfad_s *bfad = (struct bfad_s *)fcport->bfa->bfad;
 struct bfa_aen_entry_s *aen_entry;

 bfad_get_aen_entry(bfad, aen_entry);
 if (!aen_entry)
  return;

 aen_entry->aen_data.port.ioc_type = bfa_get_type(fcport->bfa);
 aen_entry->aen_data.port.pwwn = fcport->pwwn;


 bfad_im_post_vendor_event(aen_entry, bfad, ++fcport->bfa->bfa_aen_seq,
      BFA_AEN_CAT_PORT, event);
}
