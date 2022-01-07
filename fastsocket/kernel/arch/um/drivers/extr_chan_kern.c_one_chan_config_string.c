
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chan {char* dev; TYPE_1__* ops; } ;
struct TYPE_2__ {char* type; } ;


 int CONFIG_CHUNK (char*,int,int,char*,int) ;

__attribute__((used)) static int one_chan_config_string(struct chan *chan, char *str, int size,
      char **error_out)
{
 int n = 0;

 if (chan == ((void*)0)) {
  CONFIG_CHUNK(str, size, n, "none", 1);
  return n;
 }

 CONFIG_CHUNK(str, size, n, chan->ops->type, 0);

 if (chan->dev == ((void*)0)) {
  CONFIG_CHUNK(str, size, n, "", 1);
  return n;
 }

 CONFIG_CHUNK(str, size, n, ":", 0);
 CONFIG_CHUNK(str, size, n, chan->dev, 0);

 return n;
}
