
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_irq_by_cb (int ,int*) ;
 int same_fd ;

void free_irq_by_fd(int fd)
{
 free_irq_by_cb(same_fd, &fd);
}
