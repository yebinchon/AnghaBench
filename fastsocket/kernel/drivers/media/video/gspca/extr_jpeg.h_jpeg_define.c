
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int JPEG_HEIGHT_OFFSET ;
 int jpeg_head ;
 int memcpy (int*,int ,int) ;

__attribute__((used)) static void jpeg_define(u8 *jpeg_hdr,
   int height,
   int width,
   int samplesY)
{
 memcpy(jpeg_hdr, jpeg_head, sizeof jpeg_head);

 jpeg_hdr[JPEG_HEIGHT_OFFSET + 0] = height >> 8;
 jpeg_hdr[JPEG_HEIGHT_OFFSET + 1] = height;
 jpeg_hdr[JPEG_HEIGHT_OFFSET + 2] = width >> 8;
 jpeg_hdr[JPEG_HEIGHT_OFFSET + 3] = width;
 jpeg_hdr[JPEG_HEIGHT_OFFSET + 6] = samplesY;

}
