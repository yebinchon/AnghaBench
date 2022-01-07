
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;


 int scm_get_ref () ;

__attribute__((used)) static int scm_open(struct block_device *blkdev, fmode_t mode)
{
 return scm_get_ref();
}
