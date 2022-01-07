
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidff_device {int * reports; } ;


 int PID_REQUIRED_REPORTS ;
 int debug (char*,int) ;

__attribute__((used)) static int pidff_reports_ok(struct pidff_device *pidff)
{
 int i;

 for (i = 0; i <= PID_REQUIRED_REPORTS; i++) {
  if (!pidff->reports[i]) {
   debug("%d missing", i);
   return 0;
  }
 }

 return 1;
}
