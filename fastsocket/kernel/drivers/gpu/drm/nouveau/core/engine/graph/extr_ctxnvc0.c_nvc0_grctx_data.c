
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvc0_grctx {int* buffer; size_t buffer_nr; int addr; TYPE_1__* data; } ;
struct TYPE_2__ {int size; int align; int access; } ;



void
nvc0_grctx_data(struct nvc0_grctx *info, u32 size, u32 align, u32 access)
{
 info->buffer[info->buffer_nr] = info->addr;
 info->buffer[info->buffer_nr] += (align - 1);
 info->buffer[info->buffer_nr] &= ~(align - 1);
 info->addr = info->buffer[info->buffer_nr++] + size;

 info->data->size = size;
 info->data->align = align;
 info->data->access = access;
 info->data++;
}
