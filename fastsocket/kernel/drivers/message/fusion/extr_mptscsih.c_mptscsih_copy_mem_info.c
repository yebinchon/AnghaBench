
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info_str {scalar_t__ pos; scalar_t__ length; scalar_t__ offset; scalar_t__ buffer; } ;


 int memcpy (scalar_t__,char*,int) ;

__attribute__((used)) static void
mptscsih_copy_mem_info(struct info_str *info, char *data, int len)
{
 if (info->pos + len > info->length)
  len = info->length - info->pos;

 if (info->pos + len < info->offset) {
  info->pos += len;
  return;
 }

 if (info->pos < info->offset) {
         data += (info->offset - info->pos);
         len -= (info->offset - info->pos);
 }

 if (len > 0) {
                memcpy(info->buffer + info->pos, data, len);
                info->pos += len;
 }
}
