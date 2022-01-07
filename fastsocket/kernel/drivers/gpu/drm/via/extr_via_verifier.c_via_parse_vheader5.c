
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int verifier_state_t ;
typedef int uint32_t ;
typedef int drm_via_private_t ;


 int VIA_VIDEOMASK ;
 int VIA_WRITE (int,int ) ;
 int state_command ;

__attribute__((used)) static __inline__ verifier_state_t
via_parse_vheader5(drm_via_private_t *dev_priv, uint32_t const **buffer,
     const uint32_t *buf_end)
{
 uint32_t addr, count, i;
 const uint32_t *buf = *buffer;

 addr = *buf++ & ~VIA_VIDEOMASK;
 i = count = *buf;
 buf += 3;
 while (i--)
  VIA_WRITE(addr, *buf++);
 if (count & 3)
  buf += 4 - (count & 3);
 *buffer = buf;
 return state_command;
}
