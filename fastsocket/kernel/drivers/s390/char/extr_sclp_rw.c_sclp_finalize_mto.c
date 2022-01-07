
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int length; } ;
struct TYPE_9__ {TYPE_3__ header; } ;
struct TYPE_7__ {int length; } ;
struct TYPE_10__ {TYPE_4__ mdb; TYPE_2__ header; } ;
struct TYPE_6__ {scalar_t__ length; } ;
struct write_sccb {TYPE_5__ msg_buf; TYPE_1__ header; } ;
struct sclp_buffer {int current_length; int mto_char_sum; int mto_number; struct write_sccb* sccb; int * current_line; } ;
struct mto {int length; } ;
typedef scalar_t__ addr_t ;



__attribute__((used)) static void
sclp_finalize_mto(struct sclp_buffer *buffer)
{
 struct write_sccb *sccb;
 struct mto *mto;
 int str_len, mto_size;

 str_len = buffer->current_length;
 buffer->current_line = ((void*)0);
 buffer->current_length = 0;


 mto_size = sizeof(struct mto) + str_len;


 sccb = buffer->sccb;
 mto = (struct mto *)(((addr_t) sccb) + sccb->header.length);


 mto->length = mto_size;





 sccb->header.length += mto_size;
 sccb->msg_buf.header.length += mto_size;
 sccb->msg_buf.mdb.header.length += mto_size;






 buffer->mto_number++;
 buffer->mto_char_sum += str_len;
}
