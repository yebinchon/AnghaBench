
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* window_handle_t ;
struct TYPE_8__ {int CardOffset; scalar_t__ Page; } ;
typedef TYPE_3__ memreq_t ;
struct TYPE_6__ {int card_start; } ;
struct TYPE_7__ {scalar_t__ magic; TYPE_1__ ctl; } ;


 int EINVAL ;
 scalar_t__ WINDOW_MAGIC ;

int pcmcia_get_mem_page(window_handle_t win, memreq_t *req)
{
 if ((win == ((void*)0)) || (win->magic != WINDOW_MAGIC))
  return -EINVAL;
 req->Page = 0;
 req->CardOffset = win->ctl.card_start;
 return 0;
}
