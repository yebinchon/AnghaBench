
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2255_fh {int resources; struct s2255_channel* channel; } ;
struct s2255_channel {int resources; } ;


 int dprintk (int,char*) ;

__attribute__((used)) static int res_get(struct s2255_fh *fh)
{
 struct s2255_channel *channel = fh->channel;

 if (channel->resources)
  return 0;

 channel->resources = 1;
 fh->resources = 1;
 dprintk(1, "s2255: res: get\n");
 return 1;
}
