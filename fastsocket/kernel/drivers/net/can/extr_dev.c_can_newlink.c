
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int can_newlink(struct net_device *dev,
         struct nlattr *tb[], struct nlattr *data[])
{
 return -EOPNOTSUPP;
}
