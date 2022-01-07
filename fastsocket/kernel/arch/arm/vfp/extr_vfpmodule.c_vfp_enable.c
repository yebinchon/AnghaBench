
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CPACC_FULL (int) ;
 int get_copro_access () ;
 int set_copro_access (int) ;

__attribute__((used)) static void vfp_enable(void *unused)
{
 u32 access = get_copro_access();




 set_copro_access(access | CPACC_FULL(10) | CPACC_FULL(11));
}
