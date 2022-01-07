
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int strip_xmit (int *,struct net_device*) ;

__attribute__((used)) static void strip_IdleTask(unsigned long parameter)
{
 strip_xmit(((void*)0), (struct net_device *) parameter);
}
