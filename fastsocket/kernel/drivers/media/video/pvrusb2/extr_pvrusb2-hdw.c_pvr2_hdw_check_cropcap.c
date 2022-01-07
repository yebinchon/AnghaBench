
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {scalar_t__ cropcap_stale; } ;


 int EIO ;
 int pvr2_hdw_status_poll (struct pvr2_hdw*) ;

__attribute__((used)) static int pvr2_hdw_check_cropcap(struct pvr2_hdw *hdw)
{
 if (!hdw->cropcap_stale) {
  return 0;
 }
 pvr2_hdw_status_poll(hdw);
 if (hdw->cropcap_stale) {
  return -EIO;
 }
 return 0;
}
