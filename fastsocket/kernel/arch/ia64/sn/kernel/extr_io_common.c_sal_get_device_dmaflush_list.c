
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ia64_sal_retval {scalar_t__ status; scalar_t__ v0; } ;


 int SAL_CALL_NOLOCK (struct ia64_sal_retval,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ) ;
 scalar_t__ SN_SAL_IOIF_GET_DEVICE_DMAFLUSH_LIST ;

__attribute__((used)) static inline u64
sal_get_device_dmaflush_list(u64 nasid, u64 widget_num, u64 device_num,
        u64 address)
{
 struct ia64_sal_retval ret_stuff;
 ret_stuff.status = 0;
 ret_stuff.v0 = 0;

 SAL_CALL_NOLOCK(ret_stuff,
   (u64) SN_SAL_IOIF_GET_DEVICE_DMAFLUSH_LIST,
   (u64) nasid, (u64) widget_num,
   (u64) device_num, (u64) address, 0, 0, 0);
 return ret_stuff.status;
}
