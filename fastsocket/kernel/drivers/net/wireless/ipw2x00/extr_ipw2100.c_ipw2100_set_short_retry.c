
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct ipw2100_priv {void* short_retry_limit; } ;
struct host_command {int host_command_length; void** host_command_parameters; int host_command_sequence; int host_command; } ;


 int SHORT_RETRY_LIMIT ;
 int ipw2100_hw_send_command (struct ipw2100_priv*,struct host_command*) ;

__attribute__((used)) static int ipw2100_set_short_retry(struct ipw2100_priv *priv, u32 retry)
{
 struct host_command cmd = {
  .host_command = SHORT_RETRY_LIMIT,
  .host_command_sequence = 0,
  .host_command_length = 4
 };
 int err;

 cmd.host_command_parameters[0] = retry;

 err = ipw2100_hw_send_command(priv, &cmd);
 if (err)
  return err;

 priv->short_retry_limit = retry;

 return 0;
}
