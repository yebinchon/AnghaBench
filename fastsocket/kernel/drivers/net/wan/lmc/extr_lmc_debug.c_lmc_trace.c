
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;


 scalar_t__ in_interrupt () ;
 int jiffies ;
 int printk (char*,int ,char*) ;
 int schedule () ;
 scalar_t__ time_before (int,unsigned long) ;

void lmc_trace(struct net_device *dev, char *msg){
}
