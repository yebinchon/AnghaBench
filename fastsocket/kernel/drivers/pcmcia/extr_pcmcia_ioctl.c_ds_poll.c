
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct pcmcia_socket* socket; } ;
typedef TYPE_3__ user_info_t ;
typedef int u_int ;
struct pcmcia_socket {int queue; } ;
struct TYPE_7__ {TYPE_1__* dentry; } ;
struct file {TYPE_3__* private_data; TYPE_2__ f_path; } ;
typedef int poll_table ;
struct TYPE_6__ {int d_inode; } ;


 scalar_t__ CHECK_USER (TYPE_3__*) ;
 int POLLERR ;
 int POLLIN ;
 int POLLRDNORM ;
 int ds_dbg (int,char*,int ) ;
 int iminor (int ) ;
 int poll_wait (struct file*,int *,int *) ;
 int queue_empty (TYPE_3__*) ;

__attribute__((used)) static u_int ds_poll(struct file *file, poll_table *wait)
{
    struct pcmcia_socket *s;
    user_info_t *user;

    ds_dbg(2, "ds_poll(socket %d)\n", iminor(file->f_path.dentry->d_inode));

    user = file->private_data;
    if (CHECK_USER(user))
 return POLLERR;
    s = user->socket;




    poll_wait(file, &s->queue, wait);
    if (!queue_empty(user))
 return POLLIN | POLLRDNORM;
    return 0;
}
