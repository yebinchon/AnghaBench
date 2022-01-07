
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ch; } ;
struct isar_ch {TYPE_2__ bch; TYPE_1__* is; } ;
struct TYPE_3__ {int name; } ;


 int GFP_ATOMIC ;
 int PH_CONTROL_IND ;
 int _queue_data (int *,int ,int,int ,int *,int ) ;
 int pr_debug (char*,int ,int) ;

__attribute__((used)) static inline void
deliver_status(struct isar_ch *ch, int status)
{
 pr_debug("%s: HL->LL FAXIND %x\n", ch->is->name, status);
 _queue_data(&ch->bch.ch, PH_CONTROL_IND, status, 0, ((void*)0), GFP_ATOMIC);
}
