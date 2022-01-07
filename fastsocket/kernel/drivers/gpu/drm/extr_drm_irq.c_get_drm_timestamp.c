
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int do_gettimeofday (struct timeval*) ;

__attribute__((used)) static struct timeval get_drm_timestamp(void)
{
 struct timeval t;
 do_gettimeofday(&t);
 return t;
}
