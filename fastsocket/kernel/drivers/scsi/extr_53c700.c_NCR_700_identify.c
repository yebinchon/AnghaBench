
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int IDENTIFY_BASE ;
 int NCR_700_LUN_MASK ;

__attribute__((used)) static inline __u8
NCR_700_identify(int can_disconnect, __u8 lun)
{
 return IDENTIFY_BASE |
  ((can_disconnect) ? 0x40 : 0) |
  (lun & NCR_700_LUN_MASK);
}
