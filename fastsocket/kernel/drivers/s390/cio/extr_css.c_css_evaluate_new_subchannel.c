
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int sch_no; int ssid; } ;
struct schib {int dummy; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ) ;
 int EAGAIN ;
 int css_probe_device (struct subchannel_id) ;
 int css_sch_is_valid (struct schib*) ;
 scalar_t__ stsch_err (struct subchannel_id,struct schib*) ;

__attribute__((used)) static int css_evaluate_new_subchannel(struct subchannel_id schid, int slow)
{
 struct schib schib;

 if (!slow) {

  return -EAGAIN;
 }
 if (stsch_err(schid, &schib) || !css_sch_is_valid(&schib)) {

  return 0;
 }
 CIO_MSG_EVENT(4, "event: sch 0.%x.%04x, new\n", schid.ssid,
        schid.sch_no);

 return css_probe_device(schid);
}
