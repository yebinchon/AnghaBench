
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wkr ;
typedef scalar_t__ u16 ;
struct airo_info {char defindex; } ;
struct TYPE_4__ {char* mac; void* kindex; void* len; } ;
typedef TYPE_1__ WepKeyRid ;


 void* cpu_to_le16 (int) ;
 int disable_MAC (struct airo_info*,int) ;
 int enable_MAC (struct airo_info*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int writeWepKeyRid (struct airo_info*,TYPE_1__*,int,int) ;

__attribute__((used)) static int set_wep_tx_idx(struct airo_info *ai, u16 index, int perm, int lock)
{
 WepKeyRid wkr;
 int rc;

 memset(&wkr, 0, sizeof(wkr));
 wkr.len = cpu_to_le16(sizeof(wkr));
 wkr.kindex = cpu_to_le16(0xffff);
 wkr.mac[0] = (char)index;

 if (perm) {
  ai->defindex = (char)index;
  disable_MAC(ai, lock);
 }

 rc = writeWepKeyRid(ai, &wkr, perm, lock);

 if (perm)
  enable_MAC(ai, lock);
 return rc;
}
