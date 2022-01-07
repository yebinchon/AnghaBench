
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;
typedef int __le32 ;


 int INFINIPATH_I_VERS_MASK ;
 int INFINIPATH_I_VERS_SHIFT ;
 int __le32_to_cpu (int ) ;

__attribute__((used)) static inline __u32 ipath_hdrget_ipath_ver(__le32 hdrword)
{
 return (__le32_to_cpu(hdrword) >> INFINIPATH_I_VERS_SHIFT)
     & INFINIPATH_I_VERS_MASK;
}
