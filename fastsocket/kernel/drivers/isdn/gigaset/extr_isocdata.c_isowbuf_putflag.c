
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isowbuf_t {int write; int idle; int* data; int wbits; } ;


 int DEBUG_ISO ;
 int gig_dbg (int ,char*,int) ;
 int isowbuf_putbits (struct isowbuf_t*,int,int) ;

__attribute__((used)) static inline void isowbuf_putflag(struct isowbuf_t *iwb)
{
 int write;


 isowbuf_putbits(iwb, 0x7e7e, 8);

 write = iwb->write;
 iwb->idle = iwb->data[write];
 gig_dbg(DEBUG_ISO, "idle fill byte %02x", iwb->idle);

 iwb->data[write] &= (1 << iwb->wbits) - 1;
}
