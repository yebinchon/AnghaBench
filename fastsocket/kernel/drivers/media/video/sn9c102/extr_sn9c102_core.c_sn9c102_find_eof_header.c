
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int member_0; int member_1; int member_2; int member_3; } ;
typedef TYPE_3__ u8 ;
struct TYPE_6__ {scalar_t__ pixelformat; } ;
struct TYPE_7__ {TYPE_1__ pix_format; } ;
struct sn9c102_device {TYPE_2__ sensor; } ;


 size_t ARRAY_SIZE (TYPE_3__ const**) ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 scalar_t__ V4L2_PIX_FMT_SN9C10X ;
 int memcmp (void*,TYPE_3__ const*,int) ;

__attribute__((used)) static void*
sn9c102_find_eof_header(struct sn9c102_device* cam, void* mem, size_t len)
{
 static const u8 eof_header[4][4] = {
  {0x00, 0x00, 0x00, 0x00},
  {0x40, 0x00, 0x00, 0x00},
  {0x80, 0x00, 0x00, 0x00},
  {0xc0, 0x00, 0x00, 0x00},
 };
 size_t i, j;


 if (cam->sensor.pix_format.pixelformat == V4L2_PIX_FMT_SN9C10X ||
     cam->sensor.pix_format.pixelformat == V4L2_PIX_FMT_JPEG)
  return ((void*)0);






 for (i = 0; (len >= 4) && (i <= len - 4); i++)
  for (j = 0; j < ARRAY_SIZE(eof_header); j++)
   if (!memcmp(mem + i, eof_header[j], 4))
    return mem + i;

 return ((void*)0);
}
