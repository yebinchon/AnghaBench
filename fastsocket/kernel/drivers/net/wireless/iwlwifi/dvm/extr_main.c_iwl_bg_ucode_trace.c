
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ucode_trace; } ;
struct iwl_priv {int ucode_trace; TYPE_1__ event_log; int status; } ;


 int STATUS_EXIT_PENDING ;
 int UCODE_TRACE_PERIOD ;
 int iwl_continuous_event_trace (struct iwl_priv*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwl_bg_ucode_trace(unsigned long data)
{
 struct iwl_priv *priv = (struct iwl_priv *)data;

 if (test_bit(STATUS_EXIT_PENDING, &priv->status))
  return;

 if (priv->event_log.ucode_trace) {
  iwl_continuous_event_trace(priv);

  mod_timer(&priv->ucode_trace,
    jiffies + msecs_to_jiffies(UCODE_TRACE_PERIOD));
 }
}
