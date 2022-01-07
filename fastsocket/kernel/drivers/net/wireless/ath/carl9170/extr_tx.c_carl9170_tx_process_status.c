
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int ext; int len; } ;
struct carl9170_rsp {TYPE_1__* _tx_status; TYPE_2__ hdr; } ;
struct ar9170 {int dummy; } ;
struct TYPE_3__ {int info; int cookie; } ;


 int DUMP_PREFIX_NONE ;
 scalar_t__ WARN_ON (int) ;
 int __carl9170_tx_process_status (struct ar9170*,int ,int ) ;
 int print_hex_dump_bytes (char*,int ,void*,int) ;

void carl9170_tx_process_status(struct ar9170 *ar,
    const struct carl9170_rsp *cmd)
{
 unsigned int i;

 for (i = 0; i < cmd->hdr.ext; i++) {
  if (WARN_ON(i > ((cmd->hdr.len / 2) + 1))) {
   print_hex_dump_bytes("UU:", DUMP_PREFIX_NONE,
          (void *) cmd, cmd->hdr.len + 4);
   break;
  }

  __carl9170_tx_process_status(ar, cmd->_tx_status[i].cookie,
          cmd->_tx_status[i].info);
 }
}
