
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3_napi {int last_tag; int coal_now; int int_mbox; struct tg3* tp; } ;
struct tg3 {int coalesce_mode; } ;


 int HOSTCC_MODE ;
 int HOSTCC_MODE_ENABLE ;
 int TAGGED_STATUS ;
 int mmiowb () ;
 int tg3_flag (struct tg3*,int ) ;
 scalar_t__ tg3_has_work (struct tg3_napi*) ;
 int tw32 (int ,int) ;
 int tw32_mailbox (int ,int) ;

__attribute__((used)) static void tg3_int_reenable(struct tg3_napi *tnapi)
{
 struct tg3 *tp = tnapi->tp;

 tw32_mailbox(tnapi->int_mbox, tnapi->last_tag << 24);
 mmiowb();





 if (!tg3_flag(tp, TAGGED_STATUS) && tg3_has_work(tnapi))
  tw32(HOSTCC_MODE, tp->coalesce_mode |
       HOSTCC_MODE_ENABLE | tnapi->coal_now);
}
