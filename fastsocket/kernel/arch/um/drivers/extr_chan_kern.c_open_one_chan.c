
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chan {int opened; int fd; int data; TYPE_1__* ops; int dev; int primary; int output; int input; } ;
struct TYPE_2__ {int (* open ) (int ,int ,int ,int ,int *) ;int (* close ) (int,int ) ;} ;


 int os_set_fd_block (int,int ) ;
 int stub1 (int ,int ,int ,int ,int *) ;
 int stub2 (int,int ) ;

__attribute__((used)) static int open_one_chan(struct chan *chan)
{
 int fd, err;

 if (chan->opened)
  return 0;

 if (chan->ops->open == ((void*)0))
  fd = 0;
 else fd = (*chan->ops->open)(chan->input, chan->output, chan->primary,
         chan->data, &chan->dev);
 if (fd < 0)
  return fd;

 err = os_set_fd_block(fd, 0);
 if (err) {
  (*chan->ops->close)(fd, chan->data);
  return err;
 }

 chan->fd = fd;

 chan->opened = 1;
 return 0;
}
