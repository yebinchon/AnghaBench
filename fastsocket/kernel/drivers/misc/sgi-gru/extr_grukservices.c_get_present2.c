
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message_header {int present; } ;


 int GRU_CACHE_LINE_BYTES ;

__attribute__((used)) static inline int get_present2(void *p)
{
 struct message_header *mhdr = p + GRU_CACHE_LINE_BYTES;
 return mhdr->present;
}
