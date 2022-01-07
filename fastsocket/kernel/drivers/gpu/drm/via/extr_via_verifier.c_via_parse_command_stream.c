
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int verifier_state_t ;
typedef int uint32_t ;
struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_via_private_t ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int HALCYON_HEADER1 ;
 int HALCYON_HEADER1MASK ;
 int HALCYON_HEADER2 ;
 int VIA_VIDEOMASK ;
 int VIA_VIDEO_HEADER5 ;
 int VIA_VIDEO_HEADER6 ;






 int via_parse_header1 (int *,int const**,int const*) ;
 int via_parse_header2 (int *,int const**,int const*,int*) ;
 int via_parse_vheader5 (int *,int const**,int const*) ;
 int via_parse_vheader6 (int *,int const**,int const*) ;

int
via_parse_command_stream(struct drm_device *dev, const uint32_t *buf,
    unsigned int size)
{

 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
 uint32_t cmd;
 const uint32_t *buf_end = buf + (size >> 2);
 verifier_state_t state = 133;
 int fire_count = 0;

 while (buf < buf_end) {

  switch (state) {
  case 130:
   state =
       via_parse_header2(dev_priv, &buf, buf_end,
           &fire_count);
   break;
  case 131:
   state = via_parse_header1(dev_priv, &buf, buf_end);
   break;
  case 129:
   state = via_parse_vheader5(dev_priv, &buf, buf_end);
   break;
  case 128:
   state = via_parse_vheader6(dev_priv, &buf, buf_end);
   break;
  case 133:
   if (HALCYON_HEADER2 == (cmd = *buf))
    state = 130;
   else if ((cmd & HALCYON_HEADER1MASK) == HALCYON_HEADER1)
    state = 131;
   else if ((cmd & VIA_VIDEOMASK) == VIA_VIDEO_HEADER5)
    state = 129;
   else if ((cmd & VIA_VIDEOMASK) == VIA_VIDEO_HEADER6)
    state = 128;
   else {
    DRM_ERROR
        ("Invalid / Unimplemented DMA HEADER command. 0x%x\n",
         cmd);
    state = 132;
   }
   break;
  case 132:
  default:
   return -EINVAL;
  }
 }
 if (state == 132)
  return -EINVAL;
 return 0;
}
