
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int dummy; } ;


 int TSTR ;
 int pr_debug (char*,struct stlport*) ;
 int stl_sc26198getglobreg (struct stlport*,int ) ;

__attribute__((used)) static void stl_sc26198wait(struct stlport *portp)
{
 int i;

 pr_debug("stl_sc26198wait(portp=%p)\n", portp);

 if (portp == ((void*)0))
  return;

 for (i = 0; i < 20; i++)
  stl_sc26198getglobreg(portp, TSTR);
}
