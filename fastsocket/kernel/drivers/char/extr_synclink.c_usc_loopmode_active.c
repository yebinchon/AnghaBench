
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {int dummy; } ;


 int BIT7 ;
 int CCSR ;
 int usc_InReg (struct mgsl_struct*,int ) ;

__attribute__((used)) static int usc_loopmode_active( struct mgsl_struct * info)
{
  return usc_InReg( info, CCSR ) & BIT7 ? 1 : 0 ;
}
