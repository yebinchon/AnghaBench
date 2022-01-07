
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* frame; } ;
struct s2255_channel {TYPE_1__ buffer; } ;
struct TYPE_4__ {int * lpvbits; } ;


 unsigned long SYS_FRAMES ;
 int dprintk (int,char*,...) ;
 int vfree (int *) ;

__attribute__((used)) static int s2255_release_sys_buffers(struct s2255_channel *channel)
{
 unsigned long i;
 dprintk(1, "release sys buffers\n");
 for (i = 0; i < SYS_FRAMES; i++) {
  if (channel->buffer.frame[i].lpvbits) {
   dprintk(1, "vfree %p\n",
    channel->buffer.frame[i].lpvbits);
   vfree(channel->buffer.frame[i].lpvbits);
  }
  channel->buffer.frame[i].lpvbits = ((void*)0);
 }
 return 0;
}
