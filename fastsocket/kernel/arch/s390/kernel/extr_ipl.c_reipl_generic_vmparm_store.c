
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vm_parm_len; int vm_flags; int vm_parm; } ;
struct TYPE_4__ {TYPE_1__ ccw; } ;
struct ipl_parameter_block {TYPE_2__ ipl_info; } ;
typedef size_t ssize_t ;


 int ASCEBC (int ,int) ;
 int DIAG308_VMPARM_SIZE ;
 int DIAG308_VM_FLAGS_VP_VALID ;
 size_t EINVAL ;
 scalar_t__ isalnum (char const) ;
 scalar_t__ isascii (char const) ;
 scalar_t__ isprint (char const) ;
 int memcpy (int ,char const*,int) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static ssize_t reipl_generic_vmparm_store(struct ipl_parameter_block *ipb,
       size_t vmparm_max,
       const char *buf, size_t len)
{
 int i, ip_len;


 ip_len = len;
 if ((len > 0) && (buf[len - 1] == '\n'))
  ip_len--;

 if (ip_len > vmparm_max)
  return -EINVAL;


 for (i = 0; i < ip_len; i++)
  if (!(isalnum(buf[i]) || isascii(buf[i]) || isprint(buf[i])))
   return -EINVAL;

 memset(ipb->ipl_info.ccw.vm_parm, 0, DIAG308_VMPARM_SIZE);
 ipb->ipl_info.ccw.vm_parm_len = ip_len;
 if (ip_len > 0) {
  ipb->ipl_info.ccw.vm_flags |= DIAG308_VM_FLAGS_VP_VALID;
  memcpy(ipb->ipl_info.ccw.vm_parm, buf, ip_len);
  ASCEBC(ipb->ipl_info.ccw.vm_parm, ip_len);
 } else {
  ipb->ipl_info.ccw.vm_flags &= ~DIAG308_VM_FLAGS_VP_VALID;
 }

 return len;
}
