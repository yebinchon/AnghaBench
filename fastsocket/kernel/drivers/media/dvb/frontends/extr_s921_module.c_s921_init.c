
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int printk (char*) ;

__attribute__((used)) static int s921_init(struct dvb_frontend *fe) {
 printk("s921 init\n");
 return 0;
}
