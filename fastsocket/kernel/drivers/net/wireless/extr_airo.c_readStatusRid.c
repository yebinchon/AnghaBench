
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int dummy; } ;
typedef int StatusRid ;


 int PC4500_readrid (struct airo_info*,int ,int *,int,int) ;
 int RID_STATUS ;

__attribute__((used)) static int readStatusRid(struct airo_info *ai, StatusRid *statr, int lock)
{
 return PC4500_readrid(ai, RID_STATUS, statr, sizeof(*statr), lock);
}
