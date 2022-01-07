
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAID_CTLR_LUNID ;
 scalar_t__ memcmp (unsigned char*,int ,int) ;

__attribute__((used)) static inline int is_hba_lunid(unsigned char scsi3addr[])
{
 return memcmp(scsi3addr, RAID_CTLR_LUNID, 8) == 0;
}
