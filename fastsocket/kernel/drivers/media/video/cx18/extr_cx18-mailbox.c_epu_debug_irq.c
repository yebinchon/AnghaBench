
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__* args; } ;
struct cx18_in_work_order {char* str; int flags; TYPE_1__ mb; } ;
struct cx18 {scalar_t__ enc_mem; } ;


 int CX18_F_EWO_MB_STALE ;
 scalar_t__ SCB_OFFSET ;
 int cx18_memcpy_fromio (struct cx18*,char*,scalar_t__,int) ;
 int cx18_setup_page (struct cx18*,scalar_t__) ;
 int mb_ack_irq (struct cx18*,struct cx18_in_work_order*) ;

__attribute__((used)) static
int epu_debug_irq(struct cx18 *cx, struct cx18_in_work_order *order)
{
 u32 str_offset;
 char *str = order->str;

 str[0] = '\0';
 str_offset = order->mb.args[1];
 if (str_offset) {
  cx18_setup_page(cx, str_offset);
  cx18_memcpy_fromio(cx, str, cx->enc_mem + str_offset, 252);
  str[252] = '\0';
  cx18_setup_page(cx, SCB_OFFSET);
 }

 if ((order->flags & CX18_F_EWO_MB_STALE) == 0)
  mb_ack_irq(cx, order);

 return str_offset ? 1 : 0;
}
