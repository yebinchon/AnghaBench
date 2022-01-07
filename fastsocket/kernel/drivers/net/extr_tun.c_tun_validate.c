
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int tun_validate(struct nlattr *tb[], struct nlattr *data[])
{
 return -EINVAL;
}
