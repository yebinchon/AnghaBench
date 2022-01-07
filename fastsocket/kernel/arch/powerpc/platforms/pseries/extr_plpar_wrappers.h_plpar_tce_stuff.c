
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_STUFF_TCE ;
 long plpar_hcall_norets (int ,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline long plpar_tce_stuff(unsigned long liobn, unsigned long ioba,
  unsigned long tceval, unsigned long count)
{
 return plpar_hcall_norets(H_STUFF_TCE, liobn, ioba, tceval, count);
}
