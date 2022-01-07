
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;
typedef int __le32 ;


 int INFINIPATH_RHF_RCVTYPE_MASK ;
 int INFINIPATH_RHF_RCVTYPE_SHIFT ;
 int __le32_to_cpu (int const) ;

__attribute__((used)) static inline __u32 ipath_hdrget_rcv_type(const __le32 * rbuf)
{
 return (__le32_to_cpu(rbuf[0]) >> INFINIPATH_RHF_RCVTYPE_SHIFT)
     & INFINIPATH_RHF_RCVTYPE_MASK;
}
