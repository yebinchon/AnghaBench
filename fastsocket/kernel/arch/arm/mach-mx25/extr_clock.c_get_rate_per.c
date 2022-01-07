
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CCM_PCDR0 ;
 scalar_t__ CRM_BASE ;
 unsigned long get_rate_ipg (int *) ;
 unsigned long get_rate_upll () ;
 int readl (scalar_t__) ;

__attribute__((used)) static unsigned long get_rate_per(int per)
{
 unsigned long ofs = (per & 0x3) * 8;
 unsigned long reg = per & ~0x3;
 unsigned long val = (readl(CRM_BASE + CCM_PCDR0 + reg) >> ofs) & 0x3f;
 unsigned long fref;

 if (readl(CRM_BASE + 0x64) & (1 << per))
  fref = get_rate_upll();
 else
  fref = get_rate_ipg(((void*)0));

 return fref / (val + 1);
}
