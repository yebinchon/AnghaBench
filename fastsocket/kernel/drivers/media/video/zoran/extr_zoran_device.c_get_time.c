
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; unsigned long tv_usec; } ;


 int do_gettimeofday (struct timeval*) ;

__attribute__((used)) static inline unsigned long
get_time (void)
{
 struct timeval tv;

 do_gettimeofday(&tv);
 return (1000000 * tv.tv_sec + tv.tv_usec);
}
