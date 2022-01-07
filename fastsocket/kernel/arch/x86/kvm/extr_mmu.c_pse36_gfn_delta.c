
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int gfn_t ;


 int PAGE_SHIFT ;
 int PT32_DIR_PSE36_MASK ;
 int PT32_DIR_PSE36_SHIFT ;

__attribute__((used)) static gfn_t pse36_gfn_delta(u32 gpte)
{
 int shift = 32 - PT32_DIR_PSE36_SHIFT - PAGE_SHIFT;

 return (gpte & PT32_DIR_PSE36_MASK) << shift;
}
