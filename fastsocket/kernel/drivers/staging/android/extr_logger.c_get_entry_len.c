
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logger_log {size_t size; int buffer; } ;
struct logger_entry {int dummy; } ;
typedef char __u32 ;
typedef char __u16 ;


 int memcpy (char*,int ,int) ;

__attribute__((used)) static __u32 get_entry_len(struct logger_log *log, size_t off)
{
 __u16 val;

 switch (log->size - off) {
 case 1:
  memcpy(&val, log->buffer + off, 1);
  memcpy(((char *) &val) + 1, log->buffer, 1);
  break;
 default:
  memcpy(&val, log->buffer + off, 2);
 }

 return sizeof(struct logger_entry) + val;
}
