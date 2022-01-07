
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet {int* data; } ;
struct frame {scalar_t__ data; } ;


 int memcpy (void*,int*,int) ;

__attribute__((used)) static void inline
frame_put_packet (struct frame *f, struct packet *p)
{
 int section_type = p->data[0] >> 5;
 int dif_sequence = p->data[1] >> 4;
 int dif_block = p->data[2];


 if (dif_sequence > 11 || dif_block > 149) return;

 switch (section_type) {
 case 0:
         memcpy( (void *) f->data + dif_sequence * 150 * 80, p->data, 480);
         break;

 case 1:
         memcpy( (void *) f->data + dif_sequence * 150 * 80 + (1 + dif_block) * 80, p->data, 480);
         break;

 case 2:
         memcpy( (void *) f->data + dif_sequence * 150 * 80 + (3 + dif_block) * 80, p->data, 480);
         break;

 case 3:
         memcpy( (void *) f->data + dif_sequence * 150 * 80 + (6 + dif_block * 16) * 80, p->data, 480);
         break;

 case 4:
         memcpy( (void *) f->data + dif_sequence * 150 * 80 + (7 + (dif_block / 15) + dif_block) * 80, p->data, 480);
         break;

 default:
         break;
 }
}
