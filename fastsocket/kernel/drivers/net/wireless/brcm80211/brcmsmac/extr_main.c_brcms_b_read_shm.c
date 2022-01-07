
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct brcms_hardware {int dummy; } ;


 int OBJADDR_SHM_SEL ;
 int brcms_b_read_objmem (struct brcms_hardware*,int ,int ) ;

u16 brcms_b_read_shm(struct brcms_hardware *wlc_hw, uint offset)
{
 return brcms_b_read_objmem(wlc_hw, offset, OBJADDR_SHM_SEL);
}
