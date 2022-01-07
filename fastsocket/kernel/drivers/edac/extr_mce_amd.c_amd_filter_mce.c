
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mce {int status; int bank; } ;


 int report_gart_errors ;

__attribute__((used)) static bool amd_filter_mce(struct mce *m)
{
 u8 xec = (m->status >> 16) & 0x1f;




 if (m->bank == 4 && xec == 0x5 && !report_gart_errors)
  return 1;

 return 0;
}
