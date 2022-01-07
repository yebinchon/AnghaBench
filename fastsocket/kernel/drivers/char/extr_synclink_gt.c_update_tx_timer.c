
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct slgt_info {int tx_timer; TYPE_1__ params; } ;


 scalar_t__ MGSL_MODE_HDLC ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int tbuf_bytes (struct slgt_info*) ;

__attribute__((used)) static void update_tx_timer(struct slgt_info *info)
{




 if (info->params.mode == MGSL_MODE_HDLC) {
  int timeout = (tbuf_bytes(info) * 7) + 1000;
  mod_timer(&info->tx_timer, jiffies + msecs_to_jiffies(timeout));
 }
}
