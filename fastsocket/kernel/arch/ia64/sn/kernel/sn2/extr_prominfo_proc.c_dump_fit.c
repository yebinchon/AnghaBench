
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int dump_fit_entry (char*,unsigned long*) ;
 scalar_t__ get_fit_entry (unsigned long,int,unsigned long*,int *,int ) ;

__attribute__((used)) static int
dump_fit(char *page, unsigned long nasid)
{
 unsigned long fentry[2];
 int index;
 char *p;

 p = page;
 for (index=0;;index++) {
  BUG_ON(index * 60 > PAGE_SIZE);
  if (get_fit_entry(nasid, index, fentry, ((void*)0), 0))
   break;
  p += dump_fit_entry(p, fentry);
 }

 return p - page;
}
