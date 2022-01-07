
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcp_session {int bufsize; scalar_t__ response; } ;
struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 int kfree (struct vmcp_session*) ;

__attribute__((used)) static int vmcp_release(struct inode *inode, struct file *file)
{
 struct vmcp_session *session;

 session = (struct vmcp_session *)file->private_data;
 file->private_data = ((void*)0);
 free_pages((unsigned long)session->response, get_order(session->bufsize));
 kfree(session);
 return 0;
}
