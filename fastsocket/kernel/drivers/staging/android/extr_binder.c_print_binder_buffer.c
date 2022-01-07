
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_buffer {int debug_id; scalar_t__ transaction; int offsets_size; int data_size; int data; } ;


 int snprintf (char*,int,char*,char const*,int,int ,int ,int ,char*) ;

__attribute__((used)) static char *print_binder_buffer(char *buf, char *end, const char *prefix,
     struct binder_buffer *buffer)
{
 buf += snprintf(buf, end - buf, "%s %d: %p size %zd:%zd %s\n",
   prefix, buffer->debug_id, buffer->data,
   buffer->data_size, buffer->offsets_size,
   buffer->transaction ? "active" : "delivered");
 return buf;
}
