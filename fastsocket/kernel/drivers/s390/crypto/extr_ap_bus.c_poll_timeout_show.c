
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int poll_timeout ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t poll_timeout_show(struct bus_type *bus, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%llu\n", poll_timeout);
}
