
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sun4v_mmustat_info (unsigned long*) ;

__attribute__((used)) static unsigned long read_mmustat_enable(unsigned long junk)
{
 unsigned long ra = 0;

 sun4v_mmustat_info(&ra);

 return ra != 0;
}
