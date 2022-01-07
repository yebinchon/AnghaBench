
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int id; } ;


 int SCLP_CMDW_DECONFIGURE_CHPATH ;
 int do_chp_configure (int) ;

int sclp_chp_deconfigure(struct chp_id chpid)
{
 return do_chp_configure(SCLP_CMDW_DECONFIGURE_CHPATH | chpid.id << 8);
}
