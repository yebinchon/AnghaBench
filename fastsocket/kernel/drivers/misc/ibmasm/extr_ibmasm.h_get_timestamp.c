
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;


 int do_gettimeofday (struct timeval*) ;
 int sprintf (char*,char*,int ,int ) ;

__attribute__((used)) static inline char *get_timestamp(char *buf)
{
 struct timeval now;
 do_gettimeofday(&now);
 sprintf(buf, "%lu.%lu", now.tv_sec, now.tv_usec);
 return buf;
}
