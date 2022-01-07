
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int find_freq_from_fid (int) ;

__attribute__((used)) static u32 find_khz_freq_from_fid(u32 fid)
{
 return 1000 * find_freq_from_fid(fid);
}
