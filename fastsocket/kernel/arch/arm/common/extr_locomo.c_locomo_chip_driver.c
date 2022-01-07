
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct locomo_dev {TYPE_1__ dev; } ;
struct locomo {int dummy; } ;


 scalar_t__ dev_get_drvdata (int ) ;

__attribute__((used)) static inline struct locomo *locomo_chip_driver(struct locomo_dev *ldev)
{
 return (struct locomo *)dev_get_drvdata(ldev->dev.parent);
}
