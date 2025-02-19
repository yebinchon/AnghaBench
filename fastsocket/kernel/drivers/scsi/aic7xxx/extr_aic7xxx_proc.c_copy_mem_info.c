
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info_str {scalar_t__ pos; scalar_t__ offset; scalar_t__ length; int buffer; } ;
typedef scalar_t__ off_t ;


 int memcpy (int,char*,int) ;

__attribute__((used)) static void
copy_mem_info(struct info_str *info, char *data, int len)
{
 if (info->pos + len > info->offset + info->length)
  len = info->offset + info->length - info->pos;

 if (info->pos + len < info->offset) {
  info->pos += len;
  return;
 }

 if (info->pos < info->offset) {
  off_t partial;

  partial = info->offset - info->pos;
  data += partial;
  info->pos += partial;
  len -= partial;
 }

 if (len > 0) {
  memcpy(info->buffer, data, len);
  info->pos += len;
  info->buffer += len;
 }
}
