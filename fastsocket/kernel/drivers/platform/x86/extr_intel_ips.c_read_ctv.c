
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ips_driver {int dummy; } ;


 int CTV_TEMP_ERROR ;
 int THM_CTV1 ;
 int THM_CTV2 ;
 int thm_readw (int) ;

__attribute__((used)) static u16 read_ctv(struct ips_driver *ips, int cpu)
{
 int reg = cpu ? THM_CTV2 : THM_CTV1;
 u16 val;

 val = thm_readw(reg);
 if (!(val & CTV_TEMP_ERROR))
  val = (val) >> 6;
 else
  val = 0;

 return val;
}
