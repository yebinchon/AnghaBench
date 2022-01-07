
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platram_info {int dummy; } ;
struct platform_device {int dummy; } ;


 scalar_t__ platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static inline struct platram_info *to_platram_info(struct platform_device *dev)
{
 return (struct platram_info *)platform_get_drvdata(dev);
}
