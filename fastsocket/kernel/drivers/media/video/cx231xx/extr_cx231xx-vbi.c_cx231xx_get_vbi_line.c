
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cx231xx_dmaqueue {int last_sav; } ;
struct cx231xx {int dummy; } ;




 int cx231xx_copy_vbi_line (struct cx231xx*,struct cx231xx_dmaqueue*,int*,int ,int) ;

u32 cx231xx_get_vbi_line(struct cx231xx *dev, struct cx231xx_dmaqueue *dma_q,
    u8 sav_eav, u8 *p_buffer, u32 buffer_size)
{
 u32 bytes_copied = 0;
 int current_field = -1;

 switch (sav_eav) {

 case 129:
  current_field = 1;
  break;

 case 128:
  current_field = 2;
  break;
 default:
  break;
 }

 if (current_field < 0)
  return bytes_copied;

 dma_q->last_sav = sav_eav;

 bytes_copied =
     cx231xx_copy_vbi_line(dev, dma_q, p_buffer, buffer_size,
      current_field);

 return bytes_copied;
}
