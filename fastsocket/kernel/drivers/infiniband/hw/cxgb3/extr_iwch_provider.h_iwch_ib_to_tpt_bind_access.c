
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int TPT_REMOTE_READ ;
 int TPT_REMOTE_WRITE ;

__attribute__((used)) static inline u32 iwch_ib_to_tpt_bind_access(int acc)
{
 return (acc & IB_ACCESS_REMOTE_WRITE ? TPT_REMOTE_WRITE : 0) |
        (acc & IB_ACCESS_REMOTE_READ ? TPT_REMOTE_READ : 0);
}
