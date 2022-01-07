
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ipath_hwerror_msgs {int mask; int msg; } ;
struct TYPE_3__ {int mask; int msg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ipath_format_hwmsg (char*,size_t,int ) ;
 TYPE_1__* ipath_generic_hwerror_msgs ;

void ipath_format_hwerrors(u64 hwerrs,
      const struct ipath_hwerror_msgs *hwerrmsgs,
      size_t nhwerrmsgs,
      char *msg, size_t msgl)
{
 int i;
 const int glen =
     ARRAY_SIZE(ipath_generic_hwerror_msgs);

 for (i=0; i<glen; i++) {
  if (hwerrs & ipath_generic_hwerror_msgs[i].mask) {
   ipath_format_hwmsg(msg, msgl,
        ipath_generic_hwerror_msgs[i].msg);
  }
 }

 for (i=0; i<nhwerrmsgs; i++) {
  if (hwerrs & hwerrmsgs[i].mask) {
   ipath_format_hwmsg(msg, msgl, hwerrmsgs[i].msg);
  }
 }
}
