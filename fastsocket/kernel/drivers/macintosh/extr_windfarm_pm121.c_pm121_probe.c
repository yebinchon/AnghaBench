
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int pm121_events ;
 int wf_register_client (int *) ;

__attribute__((used)) static int pm121_probe(struct platform_device *ddev)
{
 wf_register_client(&pm121_events);

 return 0;
}
