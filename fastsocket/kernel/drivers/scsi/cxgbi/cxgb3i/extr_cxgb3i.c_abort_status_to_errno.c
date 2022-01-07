
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int state; } ;
 int CTP_ESTABLISHED ;
 int ECONNRESET ;
 int EIO ;
 int EPIPE ;
 int ETIMEDOUT ;

__attribute__((used)) static int abort_status_to_errno(struct cxgbi_sock *csk, int abort_reason,
     int *need_rst)
{
 switch (abort_reason) {
 case 133:
 case 132:
  return csk->state > CTP_ESTABLISHED ? -EPIPE : -ECONNRESET;
 case 128:
 case 129:
 case 131:
 case 130:
  return -ETIMEDOUT;
 default:
  return -EIO;
 }
}
