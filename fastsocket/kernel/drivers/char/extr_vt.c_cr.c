
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_pos; int vc_x; int vc_need_wrap; } ;


 int notify_write (struct vc_data*,char) ;

__attribute__((used)) static inline void cr(struct vc_data *vc)
{
 vc->vc_pos -= vc->vc_x << 1;
 vc->vc_need_wrap = vc->vc_x = 0;
 notify_write(vc, '\r');
}
