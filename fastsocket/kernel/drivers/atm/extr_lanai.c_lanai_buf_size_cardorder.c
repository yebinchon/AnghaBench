
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_buffer {int dummy; } ;


 int PAGE_SHIFT ;
 int get_order (int ) ;
 int lanai_buf_size (struct lanai_buffer const*) ;

__attribute__((used)) static int lanai_buf_size_cardorder(const struct lanai_buffer *buf)
{
 int order = get_order(lanai_buf_size(buf)) + (PAGE_SHIFT - 10);


 if (order > 7)
  order = 7;
 return order;
}
