
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int cssid; int id; } ;
struct chp_link {struct chp_id chpid; } ;


 int CIO_TRACE_EVENT (int,char*) ;
 scalar_t__ chp_get_status (struct chp_id) ;
 int css_wait_for_slow_path () ;
 int for_each_subchannel_staged (int ,int *,struct chp_link*) ;
 int memset (struct chp_link*,int ,int) ;
 int s390_subchannel_remove_chpid ;
 int sprintf (char*,char*,int,int) ;

void chsc_chp_offline(struct chp_id chpid)
{
 char dbf_txt[15];
 struct chp_link link;

 sprintf(dbf_txt, "chpr%x.%02x", chpid.cssid, chpid.id);
 CIO_TRACE_EVENT(2, dbf_txt);

 if (chp_get_status(chpid) <= 0)
  return;
 memset(&link, 0, sizeof(struct chp_link));
 link.chpid = chpid;

 css_wait_for_slow_path();
 for_each_subchannel_staged(s390_subchannel_remove_chpid, ((void*)0), &link);
}
