
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int MTHCA_MPT_FLAG_ATOMIC ;
 int MTHCA_MPT_FLAG_LOCAL_READ ;
 int MTHCA_MPT_FLAG_LOCAL_WRITE ;
 int MTHCA_MPT_FLAG_REMOTE_READ ;
 int MTHCA_MPT_FLAG_REMOTE_WRITE ;

__attribute__((used)) static inline u32 convert_access(int acc)
{
 return (acc & IB_ACCESS_REMOTE_ATOMIC ? MTHCA_MPT_FLAG_ATOMIC : 0) |
        (acc & IB_ACCESS_REMOTE_WRITE ? MTHCA_MPT_FLAG_REMOTE_WRITE : 0) |
        (acc & IB_ACCESS_REMOTE_READ ? MTHCA_MPT_FLAG_REMOTE_READ : 0) |
        (acc & IB_ACCESS_LOCAL_WRITE ? MTHCA_MPT_FLAG_LOCAL_WRITE : 0) |
        MTHCA_MPT_FLAG_LOCAL_READ;
}
