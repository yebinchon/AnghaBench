
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sclp_buffer {scalar_t__ current_length; int * current_line; TYPE_2__* sccb; } ;
struct mto {int dummy; } ;
struct TYPE_3__ {int length; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 int MAX_SCCB_ROOM ;

int
sclp_buffer_space(struct sclp_buffer *buffer)
{
 int count;

 count = MAX_SCCB_ROOM - buffer->sccb->header.length;
 if (buffer->current_line != ((void*)0))
  count -= sizeof(struct mto) + buffer->current_length;
 return count;
}
