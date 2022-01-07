
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;


 int __hfa384x_cmd_no_wait (struct net_device*,int ,int ,int) ;

__attribute__((used)) static inline int hfa384x_cmd_no_wait(struct net_device *dev, u16 cmd,
          u16 param0)
{
 return __hfa384x_cmd_no_wait(dev, cmd, param0, 6);
}
