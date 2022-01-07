
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int init_cqcam (struct parport*) ;

__attribute__((used)) static void cq_attach(struct parport *port)
{
 init_cqcam(port);
}
