
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct asd_ha_struct {int dummy; } ;


 int ANEWDATA ;
 int AOLDDATA ;
 int ATOMICDONE ;
 int ATOMICERR ;
 int ATOMICSTATCTL ;
 int ATOMICWIN ;
 int EAGAIN ;
 int EFAULT ;
 scalar_t__ asd_ddbsite_read_word (struct asd_ha_struct*,scalar_t__,scalar_t__) ;
 int asd_read_reg_byte (struct asd_ha_struct*,int ) ;
 int asd_write_reg_word (struct asd_ha_struct*,int ,scalar_t__) ;

__attribute__((used)) static inline int asd_ddbsite_update_word(struct asd_ha_struct *asd_ha,
       u16 ddb_site_no, u16 offs,
       u16 oldval, u16 newval)
{
 u8 done;
 u16 oval = asd_ddbsite_read_word(asd_ha, ddb_site_no, offs);
 if (oval != oldval)
  return -EAGAIN;
 asd_write_reg_word(asd_ha, AOLDDATA, oldval);
 asd_write_reg_word(asd_ha, ANEWDATA, newval);
 do {
  done = asd_read_reg_byte(asd_ha, ATOMICSTATCTL);
 } while (!(done & ATOMICDONE));
 if (done & ATOMICERR)
  return -EFAULT;
 else if (done & ATOMICWIN)
  return 0;
 else
  return -EAGAIN;
}
