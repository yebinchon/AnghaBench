
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int istate; } ;


 int ASYI_TXBUSY ;
 int pr_debug (char*,struct stlport*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int stl_cd1400datastate(struct stlport *portp)
{
 pr_debug("stl_cd1400datastate(portp=%p)\n", portp);

 if (portp == ((void*)0))
  return 0;

 return test_bit(ASYI_TXBUSY, &portp->istate) ? 1 : 0;
}
