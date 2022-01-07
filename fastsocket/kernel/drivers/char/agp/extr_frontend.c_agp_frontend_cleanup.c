
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int agp_miscdev ;
 int misc_deregister (int *) ;

void agp_frontend_cleanup(void)
{
 misc_deregister(&agp_miscdev);
}
