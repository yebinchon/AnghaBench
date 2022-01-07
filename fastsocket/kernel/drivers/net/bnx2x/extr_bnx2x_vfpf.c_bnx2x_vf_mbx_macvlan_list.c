
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vfpf_set_q_filters_tlv {int n_mac_vlan_filters; struct vfpf_q_mac_vlan_filter* filters; } ;
struct vfpf_q_mac_vlan_filter {int flags; int vlan_tag; int mac; } ;
struct bnx2x_virtf {int dummy; } ;
struct bnx2x_vfop_filters {int head; TYPE_1__* filters; } ;
struct bnx2x_vfop_filter {int dummy; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int add; int link; int type; int vid; int mac; } ;


 int BNX2X_VFOP_FILTER_MAC ;
 int BNX2X_VFOP_FILTER_VLAN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int VFPF_Q_FILTER_DEST_MAC_VALID ;
 int VFPF_Q_FILTER_SET_MAC ;
 int kfree (struct bnx2x_vfop_filters*) ;
 struct bnx2x_vfop_filters* kzalloc (size_t,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int bnx2x_vf_mbx_macvlan_list(struct bnx2x *bp,
         struct bnx2x_virtf *vf,
         struct vfpf_set_q_filters_tlv *tlv,
         struct bnx2x_vfop_filters **pfl,
         u32 type_flag)
{
 int i, j;
 struct bnx2x_vfop_filters *fl = ((void*)0);
 size_t fsz;

 fsz = tlv->n_mac_vlan_filters * sizeof(struct bnx2x_vfop_filter) +
  sizeof(struct bnx2x_vfop_filters);

 fl = kzalloc(fsz, GFP_KERNEL);
 if (!fl)
  return -ENOMEM;

 INIT_LIST_HEAD(&fl->head);

 for (i = 0, j = 0; i < tlv->n_mac_vlan_filters; i++) {
  struct vfpf_q_mac_vlan_filter *msg_filter = &tlv->filters[i];

  if ((msg_filter->flags & type_flag) != type_flag)
   continue;
  if (type_flag == VFPF_Q_FILTER_DEST_MAC_VALID) {
   fl->filters[j].mac = msg_filter->mac;
   fl->filters[j].type = BNX2X_VFOP_FILTER_MAC;
  } else {
   fl->filters[j].vid = msg_filter->vlan_tag;
   fl->filters[j].type = BNX2X_VFOP_FILTER_VLAN;
  }
  fl->filters[j].add =
   (msg_filter->flags & VFPF_Q_FILTER_SET_MAC) ?
   1 : 0;
  list_add_tail(&fl->filters[j++].link, &fl->head);
 }
 if (list_empty(&fl->head))
  kfree(fl);
 else
  *pfl = fl;

 return 0;
}
