
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kfifo {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ kfifo_put (struct kfifo*,unsigned char*,int) ;

__attribute__((used)) static void cxio_hal_put_resource(struct kfifo *fifo, u32 entry)
{
 BUG_ON(kfifo_put(fifo, (unsigned char *) &entry, sizeof(u32)) == 0);
}
