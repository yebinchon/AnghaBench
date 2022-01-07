
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int add_fs () ;

__attribute__((used)) static int tc1100_probe(struct platform_device *device)
{
 int result = 0;

 result = add_fs();
 return result;
}
