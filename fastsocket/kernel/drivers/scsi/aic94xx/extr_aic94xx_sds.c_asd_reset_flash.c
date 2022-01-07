
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bar; } ;
struct TYPE_4__ {TYPE_1__ flash; } ;
struct asd_ha_struct {TYPE_2__ hw_prof; } ;


 int FLASH_RESET ;
 int asd_poll_flash (struct asd_ha_struct*) ;
 int asd_write_reg_byte (struct asd_ha_struct*,int ,int ) ;

__attribute__((used)) static int asd_reset_flash(struct asd_ha_struct *asd_ha)
{
 int err;

 err = asd_poll_flash(asd_ha);
 if (err)
  return err;
 asd_write_reg_byte(asd_ha, asd_ha->hw_prof.flash.bar, FLASH_RESET);
 err = asd_poll_flash(asd_ha);

 return err;
}
