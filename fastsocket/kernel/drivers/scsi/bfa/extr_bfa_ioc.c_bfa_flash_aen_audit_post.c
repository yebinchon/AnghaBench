
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_ioc_s {int ioc_aen_seq; TYPE_1__* attr; TYPE_2__* bfa; } ;
struct TYPE_8__ {int partition_inst; int partition_type; int pwwn; } ;
struct TYPE_7__ {TYPE_4__ audit; } ;
struct bfa_aen_entry_s {TYPE_3__ aen_data; } ;
typedef enum bfa_audit_aen_event { ____Placeholder_bfa_audit_aen_event } bfa_audit_aen_event ;
struct TYPE_6__ {scalar_t__ bfad; } ;
struct TYPE_5__ {int pwwn; } ;


 int BFA_AEN_CAT_AUDIT ;
 int bfad_get_aen_entry (struct bfad_s*,struct bfa_aen_entry_s*) ;
 int bfad_im_post_vendor_event (struct bfa_aen_entry_s*,struct bfad_s*,int ,int ,int) ;

__attribute__((used)) static void
bfa_flash_aen_audit_post(struct bfa_ioc_s *ioc, enum bfa_audit_aen_event event,
   int inst, int type)
{
 struct bfad_s *bfad = (struct bfad_s *)ioc->bfa->bfad;
 struct bfa_aen_entry_s *aen_entry;

 bfad_get_aen_entry(bfad, aen_entry);
 if (!aen_entry)
  return;

 aen_entry->aen_data.audit.pwwn = ioc->attr->pwwn;
 aen_entry->aen_data.audit.partition_inst = inst;
 aen_entry->aen_data.audit.partition_type = type;


 bfad_im_post_vendor_event(aen_entry, bfad, ++ioc->ioc_aen_seq,
      BFA_AEN_CAT_AUDIT, event);
}
