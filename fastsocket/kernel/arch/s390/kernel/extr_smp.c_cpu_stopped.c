
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int signal_processor_ps (int*,int ,int,int ) ;
 int sigp_sense ;


__attribute__((used)) static int cpu_stopped(int cpu)
{
 __u32 status;

 switch (signal_processor_ps(&status, 0, cpu, sigp_sense)) {
 case 128:

  if (status & 0x50)
   return 1;
  break;
 default:
  break;
 }
 return 0;
}
