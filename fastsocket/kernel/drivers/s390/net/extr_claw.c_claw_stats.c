
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {struct claw_privbk* ml_priv; } ;
struct claw_privbk {struct net_device_stats stats; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int trace ;

__attribute__((used)) static struct
net_device_stats *claw_stats(struct net_device *dev)
{
        struct claw_privbk *privptr;

 CLAW_DBF_TEXT(4, trace, "stats");
 privptr = dev->ml_priv;
        return &privptr->stats;
}
