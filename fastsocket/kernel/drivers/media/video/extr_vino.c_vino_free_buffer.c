
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page_count; } ;
struct vino_framebuffer {TYPE_1__ desc_table; } ;


 int vino_free_buffer_with_count (struct vino_framebuffer*,int ) ;

__attribute__((used)) static void vino_free_buffer(struct vino_framebuffer *fb)
{
 vino_free_buffer_with_count(fb, fb->desc_table.page_count);
}
