
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chsc_response_struct {int data; } ;
struct chp_id {int dummy; } ;
struct channel_path_desc {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int chsc_determine_channel_path_desc (struct chp_id,int ,int ,int ,int ,struct chsc_response_struct*) ;
 int kfree (struct chsc_response_struct*) ;
 struct chsc_response_struct* kzalloc (int,int ) ;
 int memcpy (struct channel_path_desc*,int *,int) ;

int chsc_determine_base_channel_path_desc(struct chp_id chpid,
       struct channel_path_desc *desc)
{
 struct chsc_response_struct *chsc_resp;
 int ret;

 chsc_resp = kzalloc(sizeof(*chsc_resp), GFP_KERNEL);
 if (!chsc_resp)
  return -ENOMEM;
 ret = chsc_determine_channel_path_desc(chpid, 0, 0, 0, 0, chsc_resp);
 if (ret)
  goto out_free;
 memcpy(desc, &chsc_resp->data, sizeof(*desc));
out_free:
 kfree(chsc_resp);
 return ret;
}
