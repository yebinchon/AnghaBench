
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ssb_driver_register (int *) ;
 int ssb_gige_driver ;

int ssb_gige_init(void)
{
 return ssb_driver_register(&ssb_gige_driver);
}
