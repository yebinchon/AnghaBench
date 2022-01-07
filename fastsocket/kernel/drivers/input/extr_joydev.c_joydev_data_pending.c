
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct joydev_client {scalar_t__ startup; scalar_t__ head; scalar_t__ tail; struct joydev* joydev; } ;
struct joydev {scalar_t__ nabs; scalar_t__ nkey; } ;



__attribute__((used)) static inline int joydev_data_pending(struct joydev_client *client)
{
 struct joydev *joydev = client->joydev;

 return client->startup < joydev->nabs + joydev->nkey ||
  client->head != client->tail;
}
