
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s2255_fh {TYPE_1__* channel; } ;
struct TYPE_2__ {int resources; } ;



__attribute__((used)) static int res_locked(struct s2255_fh *fh)
{
 return fh->channel->resources;
}
