
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CIP_header {unsigned char* b; } ;
typedef enum pal_or_ntsc { ____Placeholder_pal_or_ntsc } pal_or_ntsc ;





__attribute__((used)) static inline void fill_cip_header(struct CIP_header *cip,
       unsigned char source_node_id,
       unsigned long counter,
       enum pal_or_ntsc format,
       unsigned long timestamp)
{
 cip->b[0] = source_node_id;
 cip->b[1] = 0x78;
 cip->b[2] = 0x00;
 cip->b[3] = counter;

 cip->b[4] = 0x80;

 switch(format) {
 case 128:
  cip->b[5] = 0x80;
  break;
 case 129:
  cip->b[5] = 0x00;
  break;
 }

 cip->b[6] = timestamp >> 8;
 cip->b[7] = timestamp & 0xFF;
}
