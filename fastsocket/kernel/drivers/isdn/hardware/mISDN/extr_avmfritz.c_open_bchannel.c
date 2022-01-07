
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fritzcard {struct bchannel* bch; } ;
struct TYPE_4__ {int channel; } ;
struct channel_req {scalar_t__ protocol; TYPE_1__* ch; TYPE_2__ adr; } ;
struct TYPE_3__ {scalar_t__ protocol; } ;
struct bchannel {TYPE_1__ ch; int Flags; } ;


 int EBUSY ;
 int EINVAL ;
 int FLG_FILLEMPTY ;
 int FLG_OPEN ;
 scalar_t__ ISDN_P_NONE ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int
open_bchannel(struct fritzcard *fc, struct channel_req *rq)
{
 struct bchannel *bch;

 if (rq->adr.channel > 2)
  return -EINVAL;
 if (rq->protocol == ISDN_P_NONE)
  return -EINVAL;
 bch = &fc->bch[rq->adr.channel - 1];
 if (test_and_set_bit(FLG_OPEN, &bch->Flags))
  return -EBUSY;
 test_and_clear_bit(FLG_FILLEMPTY, &bch->Flags);
 bch->ch.protocol = rq->protocol;
 rq->ch = &bch->ch;
 return 0;
}
