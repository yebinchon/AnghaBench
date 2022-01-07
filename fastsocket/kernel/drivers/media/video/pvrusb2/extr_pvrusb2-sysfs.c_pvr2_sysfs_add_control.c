
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {TYPE_11__** attrs; scalar_t__* name; } ;
struct TYPE_15__ {char* name; int mode; } ;
struct TYPE_24__ {TYPE_11__ attr; int show; } ;
struct TYPE_21__ {TYPE_11__ attr; int show; } ;
struct TYPE_20__ {TYPE_11__ attr; int show; } ;
struct TYPE_23__ {TYPE_11__ attr; int show; } ;
struct TYPE_25__ {int store; int show; TYPE_11__ attr; } ;
struct TYPE_16__ {int store; int show; TYPE_11__ attr; } ;
struct TYPE_22__ {TYPE_11__ attr; int show; } ;
struct TYPE_14__ {TYPE_11__ attr; int show; } ;
struct TYPE_26__ {TYPE_11__ attr; int show; } ;
struct pvr2_sysfs_ctl_item {int ctl_id; int created_ok; TYPE_13__ grp; TYPE_11__** attr_gen; scalar_t__* name; TYPE_7__ attr_bits; TYPE_4__ attr_max; TYPE_3__ attr_min; TYPE_6__ attr_enum; TYPE_8__ attr_custom; TYPE_12__ attr_val; TYPE_5__ attr_def; TYPE_10__ attr_type; TYPE_9__ attr_name; struct pvr2_sysfs_ctl_item* item_next; struct pvr2_sysfs* chptr; struct pvr2_ctrl* cptr; } ;
struct TYPE_19__ {int hdw; } ;
struct pvr2_sysfs {TYPE_1__* class_dev; struct pvr2_sysfs_ctl_item* item_last; struct pvr2_sysfs_ctl_item* item_first; TYPE_2__ channel; } ;
struct pvr2_ctrl {int dummy; } ;
struct TYPE_18__ {int kobj; } ;


 int GFP_KERNEL ;
 int PVR2_TRACE_ERROR_LEGS ;
 void* S_IRUGO ;
 int S_IWGRP ;
 int S_IWUSR ;
 struct pvr2_sysfs_ctl_item* kzalloc (int,int ) ;



 int pvr2_ctrl_get_name (struct pvr2_ctrl*) ;
 int pvr2_ctrl_get_type (struct pvr2_ctrl*) ;
 scalar_t__ pvr2_ctrl_has_custom_symbols (struct pvr2_ctrl*) ;
 scalar_t__ pvr2_ctrl_is_writable (struct pvr2_ctrl*) ;
 struct pvr2_ctrl* pvr2_hdw_get_ctrl_by_index (int ,int) ;
 int pvr2_sysfs_trace (char*,struct pvr2_sysfs_ctl_item*) ;
 int pvr2_trace (int ,char*,int) ;
 unsigned int scnprintf (scalar_t__*,int,char*,int ) ;
 int show_bits ;
 int show_def ;
 int show_enum ;
 int show_max ;
 int show_min ;
 int show_name ;
 int show_type ;
 int show_val_custom ;
 int show_val_norm ;
 int store_val_custom ;
 int store_val_norm ;
 int sysfs_create_group (int *,TYPE_13__*) ;

__attribute__((used)) static void pvr2_sysfs_add_control(struct pvr2_sysfs *sfp,int ctl_id)
{
 struct pvr2_sysfs_ctl_item *cip;
 struct pvr2_ctrl *cptr;
 unsigned int cnt,acnt;
 int ret;

 cptr = pvr2_hdw_get_ctrl_by_index(sfp->channel.hdw,ctl_id);
 if (!cptr) return;

 cip = kzalloc(sizeof(*cip),GFP_KERNEL);
 if (!cip) return;
 pvr2_sysfs_trace("Creating pvr2_sysfs_ctl_item id=%p",cip);

 cip->cptr = cptr;
 cip->ctl_id = ctl_id;

 cip->chptr = sfp;
 cip->item_next = ((void*)0);
 if (sfp->item_last) {
  sfp->item_last->item_next = cip;
 } else {
  sfp->item_first = cip;
 }
 sfp->item_last = cip;

 cip->attr_name.attr.name = "name";
 cip->attr_name.attr.mode = S_IRUGO;
 cip->attr_name.show = show_name;

 cip->attr_type.attr.name = "type";
 cip->attr_type.attr.mode = S_IRUGO;
 cip->attr_type.show = show_type;

 cip->attr_min.attr.name = "min_val";
 cip->attr_min.attr.mode = S_IRUGO;
 cip->attr_min.show = show_min;

 cip->attr_max.attr.name = "max_val";
 cip->attr_max.attr.mode = S_IRUGO;
 cip->attr_max.show = show_max;

 cip->attr_def.attr.name = "def_val";
 cip->attr_def.attr.mode = S_IRUGO;
 cip->attr_def.show = show_def;

 cip->attr_val.attr.name = "cur_val";
 cip->attr_val.attr.mode = S_IRUGO;

 cip->attr_custom.attr.name = "custom_val";
 cip->attr_custom.attr.mode = S_IRUGO;

 cip->attr_enum.attr.name = "enum_val";
 cip->attr_enum.attr.mode = S_IRUGO;
 cip->attr_enum.show = show_enum;

 cip->attr_bits.attr.name = "bit_val";
 cip->attr_bits.attr.mode = S_IRUGO;
 cip->attr_bits.show = show_bits;

 if (pvr2_ctrl_is_writable(cptr)) {
  cip->attr_val.attr.mode |= S_IWUSR|S_IWGRP;
  cip->attr_custom.attr.mode |= S_IWUSR|S_IWGRP;
 }

 acnt = 0;
 cip->attr_gen[acnt++] = &cip->attr_name.attr;
 cip->attr_gen[acnt++] = &cip->attr_type.attr;
 cip->attr_gen[acnt++] = &cip->attr_val.attr;
 cip->attr_gen[acnt++] = &cip->attr_def.attr;
 cip->attr_val.show = show_val_norm;
 cip->attr_val.store = store_val_norm;
 if (pvr2_ctrl_has_custom_symbols(cptr)) {
  cip->attr_gen[acnt++] = &cip->attr_custom.attr;
  cip->attr_custom.show = show_val_custom;
  cip->attr_custom.store = store_val_custom;
 }
 switch (pvr2_ctrl_get_type(cptr)) {
 case 129:

  cip->attr_gen[acnt++] = &cip->attr_enum.attr;
  break;
 case 128:

  cip->attr_gen[acnt++] = &cip->attr_min.attr;
  cip->attr_gen[acnt++] = &cip->attr_max.attr;
  break;
 case 130:

  cip->attr_gen[acnt++] = &cip->attr_bits.attr;
  break;
 default: break;
 }

 cnt = scnprintf(cip->name,sizeof(cip->name)-1,"ctl_%s",
   pvr2_ctrl_get_name(cptr));
 cip->name[cnt] = 0;
 cip->grp.name = cip->name;
 cip->grp.attrs = cip->attr_gen;

 ret = sysfs_create_group(&sfp->class_dev->kobj,&cip->grp);
 if (ret) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "sysfs_create_group error: %d",
      ret);
  return;
 }
 cip->created_ok = !0;
}
