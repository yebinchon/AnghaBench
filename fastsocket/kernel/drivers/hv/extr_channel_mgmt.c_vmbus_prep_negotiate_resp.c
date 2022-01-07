
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vmbuspipe_hdr {int dummy; } ;
struct icmsg_negotiate {int icframe_vercnt; int icmsg_vercnt; TYPE_1__* icversion_data; } ;
struct icmsg_hdr {int icmsgsize; } ;
struct TYPE_2__ {int major; int minor; } ;



bool vmbus_prep_negotiate_resp(struct icmsg_hdr *icmsghdrp,
    struct icmsg_negotiate *negop, u8 *buf,
    int fw_version, int srv_version)
{
 int icframe_major, icframe_minor;
 int icmsg_major, icmsg_minor;
 int fw_major, fw_minor;
 int srv_major, srv_minor;
 int i;
 bool found_match = 0;

 icmsghdrp->icmsgsize = 0x10;
 fw_major = (fw_version >> 16);
 fw_minor = (fw_version & 0xFFFF);

 srv_major = (srv_version >> 16);
 srv_minor = (srv_version & 0xFFFF);

 negop = (struct icmsg_negotiate *)&buf[
  sizeof(struct vmbuspipe_hdr) +
  sizeof(struct icmsg_hdr)];

 icframe_major = negop->icframe_vercnt;
 icframe_minor = 0;

 icmsg_major = negop->icmsg_vercnt;
 icmsg_minor = 0;






 for (i = 0; i < negop->icframe_vercnt; i++) {
  if ((negop->icversion_data[i].major == fw_major) &&
     (negop->icversion_data[i].minor == fw_minor)) {
   icframe_major = negop->icversion_data[i].major;
   icframe_minor = negop->icversion_data[i].minor;
   found_match = 1;
  }
 }

 if (!found_match)
  goto fw_error;

 found_match = 0;

 for (i = negop->icframe_vercnt;
   (i < negop->icframe_vercnt + negop->icmsg_vercnt); i++) {
  if ((negop->icversion_data[i].major == srv_major) &&
     (negop->icversion_data[i].minor == srv_minor)) {
   icmsg_major = negop->icversion_data[i].major;
   icmsg_minor = negop->icversion_data[i].minor;
   found_match = 1;
  }
 }






fw_error:
 if (!found_match) {
  negop->icframe_vercnt = 0;
  negop->icmsg_vercnt = 0;
 } else {
  negop->icframe_vercnt = 1;
  negop->icmsg_vercnt = 1;
 }

 negop->icversion_data[0].major = icframe_major;
 negop->icversion_data[0].minor = icframe_minor;
 negop->icversion_data[1].major = icmsg_major;
 negop->icversion_data[1].minor = icmsg_minor;
 return found_match;
}
