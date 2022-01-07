
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int TIOCX_CORELET ;
 int TIO_SWIN_BASE (int,int ) ;

u64 tiocx_swin_base(int nasid)
{
 return TIO_SWIN_BASE(nasid, TIOCX_CORELET);
}
