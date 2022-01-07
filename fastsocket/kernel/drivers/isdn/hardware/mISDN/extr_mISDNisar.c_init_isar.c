
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct isar_hw {int version; TYPE_2__* ch; int hw; int (* ctrl ) (int ,int ,int ) ;int name; } ;
struct TYPE_6__ {long data; int * function; } ;
struct TYPE_4__ {int debug; int Flags; } ;
struct TYPE_5__ {TYPE_1__ bch; TYPE_3__ ftimer; } ;


 int DEBUG_HW ;
 int EINVAL ;
 int FLG_INITIALIZED ;
 int HW_RESET_REQ ;
 int ISARVersion (struct isar_hw*) ;
 int ftimer_handler ;
 int init_timer (TYPE_3__*) ;
 int pr_notice (char*,int ,int,int) ;
 int stub1 (int ,int ,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int
init_isar(struct isar_hw *isar)
{
 int cnt = 3;

 while (cnt--) {
  isar->version = ISARVersion(isar);
  if (isar->ch[0].bch.debug & DEBUG_HW)
   pr_notice("%s: Testing version %d (%d time)\n",
    isar->name, isar->version, 3 - cnt);
  if (isar->version == 1)
   break;
  isar->ctrl(isar->hw, HW_RESET_REQ, 0);
 }
 if (isar->version != 1)
  return -EINVAL;
 isar->ch[0].ftimer.function = &ftimer_handler;
 isar->ch[0].ftimer.data = (long)&isar->ch[0];
 init_timer(&isar->ch[0].ftimer);
 test_and_set_bit(FLG_INITIALIZED, &isar->ch[0].bch.Flags);
 isar->ch[1].ftimer.function = &ftimer_handler;
 isar->ch[1].ftimer.data = (long)&isar->ch[1];
 init_timer(&isar->ch[1].ftimer);
 test_and_set_bit(FLG_INITIALIZED, &isar->ch[1].bch.Flags);
 return 0;
}
