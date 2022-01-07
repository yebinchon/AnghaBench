
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ACERHDF_FAN_AUTO ;
 int acerhdf_change_fanstate (int ) ;
 scalar_t__ kernelmode ;
 int pr_notice (char*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int acerhdf_suspend(struct device *dev)
{
 if (kernelmode)
  acerhdf_change_fanstate(ACERHDF_FAN_AUTO);

 if (verbose)
  pr_notice("going suspend\n");

 return 0;
}
