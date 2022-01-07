
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_message_queue_desc {int * mq; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int uv_gpa (struct gru_message_queue_desc*) ;
 int xpSuccess ;
 int xp_remote_memcpy (int ,unsigned long,int) ;

__attribute__((used)) static enum xp_retval
xpc_cache_remote_gru_mq_desc_uv(struct gru_message_queue_desc *gru_mq_desc,
    unsigned long gru_mq_desc_gpa)
{
 enum xp_retval ret;

 ret = xp_remote_memcpy(uv_gpa(gru_mq_desc), gru_mq_desc_gpa,
          sizeof(struct gru_message_queue_desc));
 if (ret == xpSuccess)
  gru_mq_desc->mq = ((void*)0);

 return ret;
}
