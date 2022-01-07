
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tifm_ms {int cmd_flags; TYPE_1__* req; } ;
struct TYPE_2__ {scalar_t__ need_card_int; int error; } ;


 int CARD_INT ;
 int CMD_READY ;
 int FIFO_READY ;

__attribute__((used)) static int tifm_ms_check_status(struct tifm_ms *host)
{
 if (!host->req->error) {
  if (!(host->cmd_flags & CMD_READY))
   return 1;
  if (!(host->cmd_flags & FIFO_READY))
   return 1;
  if (host->req->need_card_int
      && !(host->cmd_flags & CARD_INT))
   return 1;
 }
 return 0;
}
