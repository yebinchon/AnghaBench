
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;



__attribute__((used)) static int bdev_equal(struct block_device *lhs, struct block_device *rhs)
{




 return lhs == rhs;
}
