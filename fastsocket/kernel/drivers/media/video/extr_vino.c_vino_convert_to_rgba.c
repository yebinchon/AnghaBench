
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int page_count; scalar_t__* virtual; } ;
struct vino_framebuffer {TYPE_1__ desc_table; } ;


 unsigned int PAGE_SIZE ;

__attribute__((used)) static void vino_convert_to_rgba(struct vino_framebuffer *fb) {
 unsigned char *pageptr;
 unsigned int page, i;
 unsigned char a;

 for (page = 0; page < fb->desc_table.page_count; page++) {
  pageptr = (unsigned char *)fb->desc_table.virtual[page];

  for (i = 0; i < PAGE_SIZE; i += 4) {
   a = pageptr[0];
   pageptr[0] = pageptr[3];
   pageptr[1] = pageptr[2];
   pageptr[2] = pageptr[1];
   pageptr[3] = a;
   pageptr += 4;
  }
 }
}
