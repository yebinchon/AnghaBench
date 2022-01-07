
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
typedef int fmode_t ;


 int scm_put_ref () ;

__attribute__((used)) static int scm_release(struct gendisk *gendisk, fmode_t mode)
{
 scm_put_ref();
 return 0;
}
