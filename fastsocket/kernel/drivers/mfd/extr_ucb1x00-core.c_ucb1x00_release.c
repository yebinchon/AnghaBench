
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int dummy; } ;
struct device {int dummy; } ;


 struct ucb1x00* classdev_to_ucb1x00 (struct device*) ;
 int kfree (struct ucb1x00*) ;

__attribute__((used)) static void ucb1x00_release(struct device *dev)
{
 struct ucb1x00 *ucb = classdev_to_ucb1x00(dev);
 kfree(ucb);
}
