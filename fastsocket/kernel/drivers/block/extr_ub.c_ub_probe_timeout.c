
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void ub_probe_timeout(unsigned long arg)
{
 struct completion *cop = (struct completion *) arg;
 complete(cop);
}
