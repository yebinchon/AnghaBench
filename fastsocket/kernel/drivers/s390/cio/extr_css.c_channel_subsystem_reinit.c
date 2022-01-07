
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHSC_SDA_OC_MSS ;
 int chsc_enable_facility (int ) ;

void channel_subsystem_reinit(void)
{
 chsc_enable_facility(CHSC_SDA_OC_MSS);
}
