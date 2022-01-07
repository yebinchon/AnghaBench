
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int remove_fs () ;

__attribute__((used)) static int tc1100_remove(struct platform_device *device)
{
 remove_fs();
 return 0;
}
