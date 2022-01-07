
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_send_buf {scalar_t__* context; int ah; } ;


 int cm_deref_id (scalar_t__) ;
 int ib_destroy_ah (int ) ;
 int ib_free_send_mad (struct ib_mad_send_buf*) ;

__attribute__((used)) static void cm_free_msg(struct ib_mad_send_buf *msg)
{
 ib_destroy_ah(msg->ah);
 if (msg->context[0])
  cm_deref_id(msg->context[0]);
 ib_free_send_mad(msg);
}
