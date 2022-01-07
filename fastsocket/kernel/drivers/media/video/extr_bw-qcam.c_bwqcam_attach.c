
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 scalar_t__ accept_bwqcam (struct parport*) ;
 int init_bwqcam (struct parport*) ;

__attribute__((used)) static void bwqcam_attach(struct parport *port)
{
 if (accept_bwqcam(port))
  init_bwqcam(port);
}
