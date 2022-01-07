
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FPU_REG ;


 int f_cos (int *,int ) ;

__attribute__((used)) static void fcos(FPU_REG *st0_ptr, u_char st0_tag)
{
 f_cos(st0_ptr, st0_tag);
}
