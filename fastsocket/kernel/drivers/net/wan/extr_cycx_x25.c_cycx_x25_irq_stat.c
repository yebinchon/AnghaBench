
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cycx_x25_cmd {int buf; } ;
struct TYPE_4__ {int stats; } ;
struct TYPE_3__ {TYPE_2__ x; } ;
struct cycx_device {int wait_stats; TYPE_1__ u; int hw; } ;


 int cycx_peek (int *,int ,int *,int) ;
 int cycx_x25_dump_stats (int *) ;
 int hex_dump (char*,unsigned char*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cycx_x25_irq_stat(struct cycx_device *card,
         struct cycx_x25_cmd *cmd)
{
 cycx_peek(&card->hw, cmd->buf, &card->u.x.stats,
    sizeof(card->u.x.stats));
 hex_dump("cycx_x25_irq_stat", (unsigned char*)&card->u.x.stats,
   sizeof(card->u.x.stats));
 cycx_x25_dump_stats(&card->u.x.stats);
 wake_up_interruptible(&card->wait_stats);
}
