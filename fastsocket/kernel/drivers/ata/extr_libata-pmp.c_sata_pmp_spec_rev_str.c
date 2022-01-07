
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t SATA_PMP_GSCR_REV ;

__attribute__((used)) static const char *sata_pmp_spec_rev_str(const u32 *gscr)
{
 u32 rev = gscr[SATA_PMP_GSCR_REV];

 if (rev & (1 << 3))
  return "1.2";
 if (rev & (1 << 2))
  return "1.1";
 if (rev & (1 << 1))
  return "1.0";
 return "<unknown>";
}
