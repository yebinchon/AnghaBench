
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int dummy; } ;
typedef int SsidRid ;


 int PC4500_readrid (struct airo_info*,int ,int *,int,int) ;
 int RID_SSID ;

__attribute__((used)) static int readSsidRid(struct airo_info*ai, SsidRid *ssidr)
{
 return PC4500_readrid(ai, RID_SSID, ssidr, sizeof(*ssidr), 1);
}
