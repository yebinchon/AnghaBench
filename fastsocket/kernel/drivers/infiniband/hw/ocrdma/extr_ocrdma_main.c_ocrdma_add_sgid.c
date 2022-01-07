
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct ocrdma_dev {int sgid_lock; int * sgid_tbl; } ;


 int OCRDMA_MAX_SGID ;
 int memcmp (int *,union ib_gid*,int) ;
 int memcpy (int *,union ib_gid*,int) ;
 int memset (union ib_gid*,int ,int) ;
 int ocrdma_build_sgid_mac (union ib_gid*,unsigned char*,int,int ) ;
 union ib_gid ocrdma_zero_sgid ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool ocrdma_add_sgid(struct ocrdma_dev *dev, unsigned char *mac_addr,
       bool is_vlan, u16 vlan_id)
{
 int i;
 union ib_gid new_sgid;
 unsigned long flags;

 memset(&ocrdma_zero_sgid, 0, sizeof(union ib_gid));

 ocrdma_build_sgid_mac(&new_sgid, mac_addr, is_vlan, vlan_id);

 spin_lock_irqsave(&dev->sgid_lock, flags);
 for (i = 0; i < OCRDMA_MAX_SGID; i++) {
  if (!memcmp(&dev->sgid_tbl[i], &ocrdma_zero_sgid,
       sizeof(union ib_gid))) {

   memcpy(&dev->sgid_tbl[i], &new_sgid,
          sizeof(union ib_gid));
   spin_unlock_irqrestore(&dev->sgid_lock, flags);
   return 1;
  } else if (!memcmp(&dev->sgid_tbl[i], &new_sgid,
       sizeof(union ib_gid))) {

   spin_unlock_irqrestore(&dev->sgid_lock, flags);
   return 0;
  }
 }
 spin_unlock_irqrestore(&dev->sgid_lock, flags);
 return 0;
}
