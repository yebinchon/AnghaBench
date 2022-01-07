
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1_buffer {int addr; int page; } ;
struct pt1 {int dummy; } ;


 int pt1_free_page (struct pt1*,int ,int ) ;

__attribute__((used)) static void pt1_cleanup_buffer(struct pt1 *pt1, struct pt1_buffer *buf)
{
 pt1_free_page(pt1, buf->page, buf->addr);
}
