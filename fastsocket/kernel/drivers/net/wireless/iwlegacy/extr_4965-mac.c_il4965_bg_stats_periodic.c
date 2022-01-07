
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int status; } ;


 int CMD_ASYNC ;
 int S_EXIT_PENDING ;
 int il_is_ready_rf (struct il_priv*) ;
 int il_send_stats_request (struct il_priv*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
il4965_bg_stats_periodic(unsigned long data)
{
 struct il_priv *il = (struct il_priv *)data;

 if (test_bit(S_EXIT_PENDING, &il->status))
  return;


 if (!il_is_ready_rf(il))
  return;

 il_send_stats_request(il, CMD_ASYNC, 0);
}
