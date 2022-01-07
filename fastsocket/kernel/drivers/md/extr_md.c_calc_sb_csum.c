
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {unsigned int sb_csum; } ;
typedef TYPE_1__ mdp_super_t ;


 int MD_SB_BYTES ;
 unsigned int md_csum_fold (unsigned int) ;

__attribute__((used)) static unsigned int calc_sb_csum(mdp_super_t * sb)
{
 u64 newcsum = 0;
 u32 *sb32 = (u32*)sb;
 int i;
 unsigned int disk_csum, csum;

 disk_csum = sb->sb_csum;
 sb->sb_csum = 0;

 for (i = 0; i < MD_SB_BYTES/4 ; i++)
  newcsum += sb32[i];
 csum = (newcsum & 0xffffffff) + (newcsum>>32);
 sb->sb_csum = disk_csum;

 return csum;
}
