
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pri_detector {int dummy; } ;


 int kfree (struct pri_detector*) ;
 int pool_deregister_ref () ;
 int pri_detector_reset (struct pri_detector*,int ) ;

__attribute__((used)) static void pri_detector_exit(struct pri_detector *de)
{
 pri_detector_reset(de, 0);
 pool_deregister_ref();
 kfree(de);
}
