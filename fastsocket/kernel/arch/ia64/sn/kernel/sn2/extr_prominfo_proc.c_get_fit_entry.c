
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_sn_get_fit_compt (unsigned long,int,unsigned long*,char*,int) ;

__attribute__((used)) static int
get_fit_entry(unsigned long nasid, int index, unsigned long *fentry,
       char *banner, int banlen)
{
 return ia64_sn_get_fit_compt(nasid, index, fentry, banner, banlen);
}
