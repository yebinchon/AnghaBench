
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ code; scalar_t__ handler; struct TYPE_4__* next; } ;
typedef TYPE_1__ ext_int_info_t ;
typedef scalar_t__ ext_int_handler_t ;
typedef scalar_t__ __u16 ;


 int EINVAL ;
 int ENOENT ;
 int ext_hash (scalar_t__) ;
 TYPE_1__** ext_int_hash ;

int unregister_early_external_interrupt(__u16 code, ext_int_handler_t handler,
     ext_int_info_t *p)
{
 ext_int_info_t *q;
 int index;

 if (p == ((void*)0) || p->code != code || p->handler != handler)
  return -EINVAL;
 index = ext_hash(code);
 q = ext_int_hash[index];
 if (p != q) {
  while (q != ((void*)0)) {
   if (q->next == p)
    break;
   q = q->next;
  }
  if (q == ((void*)0))
   return -ENOENT;
  q->next = p->next;
 } else
  ext_int_hash[index] = p->next;
 return 0;
}
