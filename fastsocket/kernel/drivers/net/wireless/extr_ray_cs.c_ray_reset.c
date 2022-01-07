
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int DEBUG (int,char*) ;

__attribute__((used)) static void ray_reset(struct net_device *dev)
{
 DEBUG(1, "ray_reset entered\n");
 return;
}
