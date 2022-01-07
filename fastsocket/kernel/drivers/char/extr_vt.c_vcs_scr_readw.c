
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {unsigned long vc_pos; } ;


 int scr_readw (int const*) ;
 int softcursor_original ;

u16 vcs_scr_readw(struct vc_data *vc, const u16 *org)
{
 if ((unsigned long)org == vc->vc_pos && softcursor_original != -1)
  return softcursor_original;
 return scr_readw(org);
}
