
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int verifier_state_t ;
typedef int uint32_t ;
typedef int drm_via_private_t ;


 int HALCYON_HEADER1 ;
 int HALCYON_HEADER1MASK ;
 int VIA_WRITE (int,int const) ;
 int state_command ;

__attribute__((used)) static __inline__ verifier_state_t
via_parse_header1(drm_via_private_t *dev_priv, uint32_t const **buffer,
    const uint32_t *buf_end)
{
 register uint32_t cmd;
 const uint32_t *buf = *buffer;

 while (buf < buf_end) {
  cmd = *buf;
  if ((cmd & HALCYON_HEADER1MASK) != HALCYON_HEADER1)
   break;
  VIA_WRITE((cmd & ~HALCYON_HEADER1MASK) << 2, *++buf);
  buf++;
 }
 *buffer = buf;
 return state_command;
}
