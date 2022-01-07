
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct mISDNchannel {TYPE_1__* st; } ;
struct TYPE_4__ {int (* ctrl ) (TYPE_2__*,int ,void*) ;} ;
struct TYPE_3__ {TYPE_2__* layer1; } ;


 int EINVAL ;
 int stub1 (TYPE_2__*,int ,void*) ;

__attribute__((used)) static int
st_own_ctrl(struct mISDNchannel *ch, u_int cmd, void *arg)
{
 if (!ch->st || !ch->st->layer1)
  return -EINVAL;
 return ch->st->layer1->ctrl(ch->st->layer1, cmd, arg);
}
