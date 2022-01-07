
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef int __u32 ;


 int dprintk (char*) ;

__attribute__((used)) static int s921_read_ucblocks(struct dvb_frontend *fe, __u32 *ucblocks)
{
 dprintk("read ucblocks\n");
 return 0;
}
