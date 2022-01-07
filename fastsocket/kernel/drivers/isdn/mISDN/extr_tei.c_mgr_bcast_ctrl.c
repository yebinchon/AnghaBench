
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mISDNchannel {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int
mgr_bcast_ctrl(struct mISDNchannel *ch, u_int cmd, void *arg)
{

 return -EINVAL;
}
