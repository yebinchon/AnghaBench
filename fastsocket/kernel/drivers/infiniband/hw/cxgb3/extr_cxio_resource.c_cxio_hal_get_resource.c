
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kfifo {int dummy; } ;


 scalar_t__ kfifo_get (struct kfifo*,unsigned char*,int) ;

__attribute__((used)) static u32 cxio_hal_get_resource(struct kfifo *fifo)
{
 u32 entry;
 if (kfifo_get(fifo, (unsigned char *) &entry, sizeof(u32)))
  return entry;
 else
  return 0;
}
