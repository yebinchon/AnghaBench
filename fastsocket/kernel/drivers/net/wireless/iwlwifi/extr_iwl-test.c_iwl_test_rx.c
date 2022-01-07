
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_test {scalar_t__ notify; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;


 int iwl_test_send_rx (struct iwl_test*,struct iwl_rx_cmd_buffer*) ;

void iwl_test_rx(struct iwl_test *tst, struct iwl_rx_cmd_buffer *rxb)
{
 if (tst->notify)
  iwl_test_send_rx(tst, rxb);
}
