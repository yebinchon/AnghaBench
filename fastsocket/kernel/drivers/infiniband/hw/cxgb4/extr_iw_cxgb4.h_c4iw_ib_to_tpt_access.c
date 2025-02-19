
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FW_RI_MEM_ACCESS_LOCAL_READ ;
 int FW_RI_MEM_ACCESS_LOCAL_WRITE ;
 int FW_RI_MEM_ACCESS_REM_READ ;
 int FW_RI_MEM_ACCESS_REM_WRITE ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;

__attribute__((used)) static inline u32 c4iw_ib_to_tpt_access(int a)
{
 return (a & IB_ACCESS_REMOTE_WRITE ? FW_RI_MEM_ACCESS_REM_WRITE : 0) |
        (a & IB_ACCESS_REMOTE_READ ? FW_RI_MEM_ACCESS_REM_READ : 0) |
        (a & IB_ACCESS_LOCAL_WRITE ? FW_RI_MEM_ACCESS_LOCAL_WRITE : 0) |
        FW_RI_MEM_ACCESS_LOCAL_READ;
}
