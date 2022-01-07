
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {scalar_t__ fatal_error; int fatal_index; scalar_t__* fatal_errors; } ;


 int IPW2100_ERROR_QUEUE ;

__attribute__((used)) static inline void ipw2100_reset_fatalerror(struct ipw2100_priv *priv)
{
 if (!priv->fatal_error)
  return;

 priv->fatal_errors[priv->fatal_index++] = priv->fatal_error;
 priv->fatal_index %= IPW2100_ERROR_QUEUE;
 priv->fatal_error = 0;
}
