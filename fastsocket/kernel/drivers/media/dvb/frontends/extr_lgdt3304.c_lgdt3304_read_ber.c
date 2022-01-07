
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef int __u32 ;


 int dprintk (char*) ;

__attribute__((used)) static int lgdt3304_read_ber(struct dvb_frontend *fe, __u32 *ber)
{
 dprintk("read ber\n");
 return 0;
}
