
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fid ;
 int nforce2_fsb_read (int ) ;

__attribute__((used)) static unsigned int nforce2_get(unsigned int cpu)
{
 if (cpu)
  return 0;
 return nforce2_fsb_read(0) * fid * 100;
}
