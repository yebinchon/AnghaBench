
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int dummy; } ;
typedef int APListRid ;


 int PC4500_readrid (struct airo_info*,int ,int *,int,int) ;
 int RID_APLIST ;

__attribute__((used)) static int readAPListRid(struct airo_info *ai, APListRid *aplr)
{
 return PC4500_readrid(ai, RID_APLIST, aplr, sizeof(*aplr), 1);
}
