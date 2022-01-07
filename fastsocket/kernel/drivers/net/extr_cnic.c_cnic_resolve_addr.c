
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_sockaddr {int dummy; } ;
struct cnic_sock {struct cnic_dev* dev; } ;
struct cnic_local {int dummy; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int ISCSI_KEVENT_PATH_REQ ;
 int cnic_send_nlmsg (struct cnic_local*,int ,struct cnic_sock*) ;

__attribute__((used)) static int cnic_resolve_addr(struct cnic_sock *csk, struct cnic_sockaddr *saddr)
{
 struct cnic_dev *dev = csk->dev;
 struct cnic_local *cp = dev->cnic_priv;

 return cnic_send_nlmsg(cp, ISCSI_KEVENT_PATH_REQ, csk);
}
