
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; int bsize; } ;
struct saa7134_buf {TYPE_1__ vb; } ;


 int saa7134_buffer_pages (int ) ;

int saa7134_buffer_startpage(struct saa7134_buf *buf)
{
 return saa7134_buffer_pages(buf->vb.bsize) * buf->vb.i;
}
