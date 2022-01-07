
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ id; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
struct ib_umad_packet {int list; TYPE_2__ mad; } ;
struct ib_umad_file {int mutex; int recv_wait; int recv_list; } ;
struct ib_mad_agent {int dummy; } ;


 scalar_t__ IB_UMAD_MAX_AGENTS ;
 struct ib_mad_agent* __get_agent (struct ib_umad_file*,scalar_t__) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int queue_packet(struct ib_umad_file *file,
   struct ib_mad_agent *agent,
   struct ib_umad_packet *packet)
{
 int ret = 1;

 mutex_lock(&file->mutex);

 for (packet->mad.hdr.id = 0;
      packet->mad.hdr.id < IB_UMAD_MAX_AGENTS;
      packet->mad.hdr.id++)
  if (agent == __get_agent(file, packet->mad.hdr.id)) {
   list_add_tail(&packet->list, &file->recv_list);
   wake_up_interruptible(&file->recv_wait);
   ret = 0;
   break;
  }

 mutex_unlock(&file->mutex);

 return ret;
}
