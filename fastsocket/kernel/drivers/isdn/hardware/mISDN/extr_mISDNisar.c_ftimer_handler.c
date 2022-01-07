
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int Flags; } ;
struct isar_ch {TYPE_2__ bch; TYPE_1__* is; } ;
struct TYPE_3__ {int name; } ;


 int FLG_FTI_RUN ;
 int FLG_LL_CONN ;
 int HW_MOD_CONNECT ;
 int deliver_status (struct isar_ch*,int ) ;
 int pr_debug (char*,int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
ftimer_handler(unsigned long data)
{
 struct isar_ch *ch = (struct isar_ch *)data;

 pr_debug("%s: ftimer flags %lx\n", ch->is->name, ch->bch.Flags);
 test_and_clear_bit(FLG_FTI_RUN, &ch->bch.Flags);
 if (test_and_clear_bit(FLG_LL_CONN, &ch->bch.Flags))
  deliver_status(ch, HW_MOD_CONNECT);
}
