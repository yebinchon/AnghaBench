
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct asd_ha_struct {int dummy; } ;


 int asd_ddbsite_read_word (struct asd_ha_struct*,int,int) ;

__attribute__((used)) static inline u8 asd_ddbsite_read_byte(struct asd_ha_struct *asd_ha,
           u16 ddb_site_no,
           u16 offs)
{
 if (offs & 1)
  return asd_ddbsite_read_word(asd_ha, ddb_site_no,
          offs & ~1) >> 8;
 else
  return asd_ddbsite_read_word(asd_ha, ddb_site_no,
          offs) & 0xFF;
}
