
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int do_gettimeofday (struct timeval*) ;
 int printk (char*,char*,int,int) ;

__attribute__((used)) static inline void print_time(char *s)
{





}
