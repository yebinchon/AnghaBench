
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ code; scalar_t__ handler; struct TYPE_4__* next; } ;
typedef TYPE_1__ ext_int_info_t ;
typedef scalar_t__ ext_int_handler_t ;
typedef scalar_t__ __u16 ;


 int ENOENT ;
 int ext_hash (scalar_t__) ;
 TYPE_1__** ext_int_hash ;
 int kfree (TYPE_1__*) ;

int unregister_external_interrupt(__u16 code, ext_int_handler_t handler)
{
        ext_int_info_t *p, *q;
        int index;

 index = ext_hash(code);
        q = ((void*)0);
        p = ext_int_hash[index];
        while (p != ((void*)0)) {
                if (p->code == code && p->handler == handler)
                        break;
                q = p;
                p = p->next;
        }
        if (p == ((void*)0))
                return -ENOENT;
        if (q != ((void*)0))
                q->next = p->next;
        else
                ext_int_hash[index] = p->next;
 kfree(p);
        return 0;
}
