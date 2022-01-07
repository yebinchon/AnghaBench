
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
typedef int __le64 ;


 int cpu_to_le64 (int ) ;
 int do_gettimeofday (struct timeval*) ;

__attribute__((used)) static void stex_gettime(__le64 *time)
{
 struct timeval tv;

 do_gettimeofday(&tv);
 *time = cpu_to_le64(tv.tv_sec);
}
