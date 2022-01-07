
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slave {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bonding {int curr_slave_lock; struct slave* curr_active_slave; } ;
typedef int ssize_t ;


 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sprintf (char*,char*,char*) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_mii_status(struct device *d,
           struct device_attribute *attr,
           char *buf)
{
 struct slave *curr;
 struct bonding *bond = to_bond(d);

 read_lock(&bond->curr_slave_lock);
 curr = bond->curr_active_slave;
 read_unlock(&bond->curr_slave_lock);

 return sprintf(buf, "%s\n", curr ? "up" : "down");
}
