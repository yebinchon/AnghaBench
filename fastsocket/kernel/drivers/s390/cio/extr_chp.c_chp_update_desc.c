
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_path {int desc_fmt1; int chpid; int desc; } ;


 int chsc_determine_base_channel_path_desc (int ,int *) ;
 int chsc_determine_fmt1_channel_path_desc (int ,int *) ;

int chp_update_desc(struct channel_path *chp)
{
 int rc;

 rc = chsc_determine_base_channel_path_desc(chp->chpid, &chp->desc);
 if (rc)
  return rc;

 rc = chsc_determine_fmt1_channel_path_desc(chp->chpid, &chp->desc_fmt1);

 return rc;
}
