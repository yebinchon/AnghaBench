
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_ioc_s {TYPE_2__* bfa; TYPE_1__* cbfn; } ;
struct TYPE_4__ {scalar_t__ bfad; } ;
struct TYPE_3__ {int (* hbfail_cbfn ) (TYPE_2__*) ;} ;


 int BFA_IOC_AEN_HBFAIL ;
 int BFA_IOC_E_FAILED ;
 int BFA_LOG (int ,struct bfad_s*,int ,char*) ;
 int KERN_CRIT ;
 int bfa_ioc_aen_post (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_debug_save_ftrc (struct bfa_ioc_s*) ;
 int bfa_ioc_event_notify (struct bfa_ioc_s*,int ) ;
 int bfa_log_level ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
bfa_ioc_fail_notify(struct bfa_ioc_s *ioc)
{
 struct bfad_s *bfad = (struct bfad_s *)ioc->bfa->bfad;




 ioc->cbfn->hbfail_cbfn(ioc->bfa);
 bfa_ioc_event_notify(ioc, BFA_IOC_E_FAILED);

 bfa_ioc_debug_save_ftrc(ioc);

 BFA_LOG(KERN_CRIT, bfad, bfa_log_level,
                "Heart Beat of IOC has failed\n");
 bfa_ioc_aen_post(ioc, BFA_IOC_AEN_HBFAIL);
}
