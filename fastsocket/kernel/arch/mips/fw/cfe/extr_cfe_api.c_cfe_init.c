
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int NATIVE_FROM_XPTR (int ) ;
 int cfe_dispfunc ;
 int cfe_handle ;

int cfe_init(u64 handle, u64 ept)
{
 cfe_dispfunc = NATIVE_FROM_XPTR(ept);
 cfe_handle = handle;
 return 0;
}
