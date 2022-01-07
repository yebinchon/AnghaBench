
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i2htok; } ;
struct TYPE_4__ {TYPE_1__ mtag; int msg_id; int msg_class; } ;
struct bfi_msg_s {TYPE_2__ mhdr; } ;
struct bfa_s {int trcmod; } ;


 int WARN_ON (int) ;
 int bfa_trc (struct bfa_s*,int ) ;
 int bfa_trc_stop (int ) ;

void
bfa_isr_unhandled(struct bfa_s *bfa, struct bfi_msg_s *m)
{
 bfa_trc(bfa, m->mhdr.msg_class);
 bfa_trc(bfa, m->mhdr.msg_id);
 bfa_trc(bfa, m->mhdr.mtag.i2htok);
 WARN_ON(1);
 bfa_trc_stop(bfa->trcmod);
}
