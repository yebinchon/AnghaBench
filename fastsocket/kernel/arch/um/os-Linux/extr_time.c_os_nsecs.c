
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int gettimeofday (struct timeval*,int *) ;
 long long timeval_to_ns (struct timeval*) ;

long long os_nsecs(void)
{
 struct timeval tv;

 gettimeofday(&tv, ((void*)0));
 return timeval_to_ns(&tv);
}
