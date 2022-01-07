
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fd {int fd; } ;



__attribute__((used)) static int same_fd(struct irq_fd *irq, void *fd)
{
 return (irq->fd == *((int *)fd));
}
