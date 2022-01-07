
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMRN_PMC0 ;
 int PMRN_PMC1 ;
 int PMRN_PMC2 ;
 int PMRN_PMC3 ;
 unsigned int mfpmr (int ) ;

__attribute__((used)) static inline unsigned int ctr_read(unsigned int i)
{
 switch(i) {
  case 0:
   return mfpmr(PMRN_PMC0);
  case 1:
   return mfpmr(PMRN_PMC1);
  case 2:
   return mfpmr(PMRN_PMC2);
  case 3:
   return mfpmr(PMRN_PMC3);
  default:
   return 0;
 }
}
