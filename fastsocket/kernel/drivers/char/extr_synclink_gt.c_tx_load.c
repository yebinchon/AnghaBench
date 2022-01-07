
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct slgt_info {unsigned int tbuf_start; unsigned int tbuf_current; unsigned int tbuf_count; TYPE_1__ params; struct slgt_desc* tbufs; } ;
struct slgt_desc {unsigned short buf_count; int buf; } ;


 int DBGDATA (struct slgt_info*,char const*,unsigned int,char*) ;
 unsigned int DMABUFSIZE ;
 scalar_t__ MGSL_MODE_HDLC ;
 scalar_t__ MGSL_MODE_RAW ;
 int memcpy (int ,char const*,unsigned short) ;
 int set_desc_count (struct slgt_desc,unsigned short) ;
 int set_desc_eof (struct slgt_desc,int) ;

__attribute__((used)) static void tx_load(struct slgt_info *info, const char *buf, unsigned int size)
{
 unsigned short count;
 unsigned int i;
 struct slgt_desc *d;

 if (size == 0)
  return;

 DBGDATA(info, buf, size, "tx");

 info->tbuf_start = i = info->tbuf_current;

 while (size) {
  d = &info->tbufs[i];
  if (++i == info->tbuf_count)
   i = 0;

  count = (unsigned short)((size > DMABUFSIZE) ? DMABUFSIZE : size);
  memcpy(d->buf, buf, count);

  size -= count;
  buf += count;





  if ((!size && info->params.mode == MGSL_MODE_HDLC) ||
      info->params.mode == MGSL_MODE_RAW)
   set_desc_eof(*d, 1);
  else
   set_desc_eof(*d, 0);

  set_desc_count(*d, count);
  d->buf_count = count;
 }

 info->tbuf_current = i;
}
