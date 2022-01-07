
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcp_session {int mutex; scalar_t__ resp_size; int * response; int bufsize; } ;
struct inode {int dummy; } ;
struct file {struct vmcp_session* private_data; } ;


 int CAP_SYS_ADMIN ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int capable (int ) ;
 struct vmcp_session* kmalloc (int,int ) ;
 int mutex_init (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int vmcp_open(struct inode *inode, struct file *file)
{
 struct vmcp_session *session;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 session = kmalloc(sizeof(*session), GFP_KERNEL);
 if (!session)
  return -ENOMEM;

 session->bufsize = PAGE_SIZE;
 session->response = ((void*)0);
 session->resp_size = 0;
 mutex_init(&session->mutex);
 file->private_data = session;
 return nonseekable_open(inode, file);
}
