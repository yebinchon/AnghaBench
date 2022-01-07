
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_2__ {int tv_usec; int tv_sec; } ;
struct frame {int sent_jiffs; TYPE_1__ sent; } ;


 int HZ ;
 int USEC_PER_SEC ;
 int do_gettimeofday (struct timeval*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static int
tsince_hr(struct frame *f)
{
 struct timeval now;
 int n;

 do_gettimeofday(&now);
 n = now.tv_usec - f->sent.tv_usec;
 n += (now.tv_sec - f->sent.tv_sec) * USEC_PER_SEC;

 if (n < 0)
  n = -n;
 if (n > USEC_PER_SEC / 4) {
  n = ((u32) jiffies) - f->sent_jiffs;
  n *= USEC_PER_SEC / HZ;
 }

 return n;
}
