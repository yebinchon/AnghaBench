
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int dummy; } ;
struct chp_link {struct chp_id chpid; } ;
struct channel_path {int dummy; } ;


 int * __s390_vary_chpid_on ;
 int chp_update_desc (struct channel_path*) ;
 struct channel_path* chpid_to_chp (struct chp_id) ;
 int css_wait_for_slow_path () ;
 int for_each_subchannel_staged (int ,int *,struct chp_link*) ;
 int memset (struct chp_link*,int ,int) ;
 int s390_subchannel_vary_chpid_off ;
 int s390_subchannel_vary_chpid_on ;

int chsc_chp_vary(struct chp_id chpid, int on)
{
 struct channel_path *chp = chpid_to_chp(chpid);
 struct chp_link link;

 memset(&link, 0, sizeof(struct chp_link));
 link.chpid = chpid;

 css_wait_for_slow_path();



 if (on) {

  chp_update_desc(chp);
  for_each_subchannel_staged(s390_subchannel_vary_chpid_on,
        __s390_vary_chpid_on, &link);
 } else
  for_each_subchannel_staged(s390_subchannel_vary_chpid_off,
        ((void*)0), &link);

 return 0;
}
