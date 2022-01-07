
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {int user; } ;
struct sk_buff {int len; int data; } ;
struct daemon_data {int dummy; } ;


 int daemon_user_write (int,int ,int ,struct daemon_data*) ;

__attribute__((used)) static int daemon_write(int fd, struct sk_buff *skb, struct uml_net_private *lp)
{
 return daemon_user_write(fd, skb->data, skb->len,
     (struct daemon_data *) &lp->user);
}
