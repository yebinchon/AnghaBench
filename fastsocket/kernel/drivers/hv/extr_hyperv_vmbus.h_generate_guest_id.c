
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u8 ;
typedef int __u64 ;
typedef scalar_t__ __u32 ;
typedef scalar_t__ __u16 ;


 scalar_t__ HV_LINUX_VENDOR_ID ;

__attribute__((used)) static inline __u64 generate_guest_id(__u8 d_info1, __u32 kernel_version,
     __u16 d_info2)
{
 __u64 guest_id = 0;

 guest_id = (((__u64)HV_LINUX_VENDOR_ID) << 48);
 guest_id |= (((__u64)(d_info1)) << 48);
 guest_id |= (((__u64)(kernel_version)) << 16);
 guest_id |= ((__u64)(d_info2));

 return guest_id;
}
