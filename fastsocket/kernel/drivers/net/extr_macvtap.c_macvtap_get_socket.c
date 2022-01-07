
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct macvtap_queue {struct socket sock; } ;
struct file {struct macvtap_queue* private_data; int * f_op; } ;


 int EBADFD ;
 int EINVAL ;
 struct socket* ERR_PTR (int ) ;
 int macvtap_fops ;

struct socket *macvtap_get_socket(struct file *file)
{
 struct macvtap_queue *q;
 if (file->f_op != &macvtap_fops)
  return ERR_PTR(-EINVAL);
 q = file->private_data;
 if (!q)
  return ERR_PTR(-EBADFD);
 return &q->sock;
}
