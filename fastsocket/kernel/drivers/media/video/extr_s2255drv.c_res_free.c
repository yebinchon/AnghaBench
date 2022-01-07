
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2255_fh {scalar_t__ resources; struct s2255_channel* channel; } ;
struct s2255_channel {scalar_t__ resources; } ;


 int dprintk (int,char*) ;

__attribute__((used)) static void res_free(struct s2255_fh *fh)
{
 struct s2255_channel *channel = fh->channel;
 channel->resources = 0;
 fh->resources = 0;
 dprintk(1, "res: put\n");
}
