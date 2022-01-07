
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 scalar_t__ CLOCK_MONOTONIC ;
 int sprintf (char*,char*) ;
 scalar_t__ uvc_clock_param ;

__attribute__((used)) static int uvc_clock_param_get(char *buffer, struct kernel_param *kp)
{
 if (uvc_clock_param == CLOCK_MONOTONIC)
  return sprintf(buffer, "CLOCK_MONOTONIC");
 else
  return sprintf(buffer, "CLOCK_REALTIME");
}
