
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int handler; int code; } ;
typedef TYPE_1__ ext_int_info_t ;
typedef int ext_int_handler_t ;
typedef int __u16 ;


 int EINVAL ;
 int ext_hash (int ) ;
 TYPE_1__** ext_int_hash ;

int register_early_external_interrupt(__u16 code, ext_int_handler_t handler,
          ext_int_info_t *p)
{
        int index;

        if (p == ((void*)0))
                return -EINVAL;
        p->code = code;
        p->handler = handler;
 index = ext_hash(code);
        p->next = ext_int_hash[index];
        ext_int_hash[index] = p;
        return 0;
}
