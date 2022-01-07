
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipath_devdata {int dummy; } ;
typedef int ipath_err_t ;


 int HZ ;
 int handle_supp_msgs (struct ipath_devdata*,unsigned int,char*,int ) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned handle_frequent_errors(struct ipath_devdata *dd,
           ipath_err_t errs, char *msg,
           u32 msgsz, int *noprint)
{
 unsigned long nc;
 static unsigned long nextmsg_time;
 static unsigned nmsgs, supp_msgs;






 nc = jiffies;
 if (nmsgs > 10) {
  if (time_before(nc, nextmsg_time)) {
   *noprint = 1;
   if (!supp_msgs++)
    nextmsg_time = nc + HZ * 3;
  }
  else if (supp_msgs) {
   handle_supp_msgs(dd, supp_msgs, msg, msgsz);
   supp_msgs = 0;
   nmsgs = 0;
  }
 }
 else if (!nmsgs++ || time_after(nc, nextmsg_time))
  nextmsg_time = nc + HZ / 2;

 return supp_msgs;
}
