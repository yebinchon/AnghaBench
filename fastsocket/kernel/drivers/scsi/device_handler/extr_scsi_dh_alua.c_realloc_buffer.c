
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alua_dh_data {scalar_t__ buff; scalar_t__ inq; unsigned int bufflen; } ;


 unsigned int ALUA_INQUIRY_SIZE ;
 int GFP_NOIO ;
 int kfree (scalar_t__) ;
 scalar_t__ kmalloc (unsigned int,int ) ;

__attribute__((used)) static int realloc_buffer(struct alua_dh_data *h, unsigned len)
{
 if (h->buff && h->buff != h->inq)
  kfree(h->buff);

 h->buff = kmalloc(len, GFP_NOIO);
 if (!h->buff) {
  h->buff = h->inq;
  h->bufflen = ALUA_INQUIRY_SIZE;
  return 1;
 }
 h->bufflen = len;
 return 0;
}
