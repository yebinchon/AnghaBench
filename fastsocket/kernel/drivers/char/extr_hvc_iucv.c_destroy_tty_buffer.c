
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iucv_tty_buffer {int mbuf; } ;


 int hvc_iucv_mempool ;
 int kfree (int ) ;
 int mempool_free (struct iucv_tty_buffer*,int ) ;

__attribute__((used)) static void destroy_tty_buffer(struct iucv_tty_buffer *bufp)
{
 kfree(bufp->mbuf);
 mempool_free(bufp, hvc_iucv_mempool);
}
