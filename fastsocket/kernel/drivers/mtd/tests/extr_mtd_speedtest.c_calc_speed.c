
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int tv_sec; int tv_usec; } ;
struct TYPE_5__ {int erasesize; } ;
struct TYPE_4__ {int tv_sec; int tv_usec; } ;


 TYPE_3__ finish ;
 int goodebcnt ;
 TYPE_2__* mtd ;
 TYPE_1__ start ;

__attribute__((used)) static long calc_speed(void)
{
 long ms, k, speed;

 ms = (finish.tv_sec - start.tv_sec) * 1000 +
      (finish.tv_usec - start.tv_usec) / 1000;
 k = goodebcnt * mtd->erasesize / 1024;
 speed = (k * 1000) / ms;
 return speed;
}
