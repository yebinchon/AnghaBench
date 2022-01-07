
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct brcms_c_info {int hw; } ;


 int OBJADDR_SHM_SEL ;
 int brcms_b_copyto_objmem (int ,int ,void const*,int,int ) ;

__attribute__((used)) static void brcms_c_copyto_shm(struct brcms_c_info *wlc, uint offset,
   const void *buf, int len)
{
 brcms_b_copyto_objmem(wlc->hw, offset, buf, len, OBJADDR_SHM_SEL);
}
