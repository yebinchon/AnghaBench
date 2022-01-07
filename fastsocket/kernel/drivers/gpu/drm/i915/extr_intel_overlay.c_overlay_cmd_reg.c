
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct put_image_params {int format; } ;


 int I915_OVERLAY_DEPTH_MASK ;

 int I915_OVERLAY_SWAP_MASK ;





 int I915_OVERLAY_YUV_PLANAR ;


 int OCMD_BUFFER0 ;
 int OCMD_BUF_TYPE_FRAME ;
 int OCMD_ENABLE ;
 int OCMD_UV_SWAP ;
 int OCMD_YUV_410_PLANAR ;
 int OCMD_YUV_411_PACKED ;
 int OCMD_YUV_420_PLANAR ;
 int OCMD_YUV_422_PACKED ;
 int OCMD_YUV_422_PLANAR ;
 int OCMD_Y_AND_UV_SWAP ;
 int OCMD_Y_SWAP ;

__attribute__((used)) static u32 overlay_cmd_reg(struct put_image_params *params)
{
 u32 cmd = OCMD_ENABLE | OCMD_BUF_TYPE_FRAME | OCMD_BUFFER0;

 if (params->format & I915_OVERLAY_YUV_PLANAR) {
  switch (params->format & I915_OVERLAY_DEPTH_MASK) {
  case 130:
   cmd |= OCMD_YUV_422_PLANAR;
   break;
  case 131:
   cmd |= OCMD_YUV_420_PLANAR;
   break;
  case 132:
  case 133:
   cmd |= OCMD_YUV_410_PLANAR;
   break;
  }
 } else {
  switch (params->format & I915_OVERLAY_DEPTH_MASK) {
  case 130:
   cmd |= OCMD_YUV_422_PACKED;
   break;
  case 132:
   cmd |= OCMD_YUV_411_PACKED;
   break;
  }

  switch (params->format & I915_OVERLAY_SWAP_MASK) {
  case 135:
   break;
  case 134:
   cmd |= OCMD_UV_SWAP;
   break;
  case 128:
   cmd |= OCMD_Y_SWAP;
   break;
  case 129:
   cmd |= OCMD_Y_AND_UV_SWAP;
   break;
  }
 }

 return cmd;
}
