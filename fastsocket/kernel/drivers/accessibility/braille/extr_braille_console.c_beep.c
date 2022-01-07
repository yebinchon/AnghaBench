
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int kd_mksound (unsigned int,int) ;
 scalar_t__ sound ;

__attribute__((used)) static void beep(unsigned int freq)
{
 if (sound)
  kd_mksound(freq, HZ/10);
}
