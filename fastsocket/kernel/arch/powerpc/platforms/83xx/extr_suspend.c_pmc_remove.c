
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device {int dummy; } ;


 int EPERM ;

__attribute__((used)) static int pmc_remove(struct of_device *ofdev)
{
 return -EPERM;
}
