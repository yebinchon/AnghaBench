
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu_tcam_entry {int assoc_data; int valid; void** key_mask; void** key; } ;
struct niu_parent {struct niu_tcam_entry* tcam; } ;
struct niu_classifier {int tcam_top; int tcam_valid_entries; } ;
struct niu {struct niu_classifier clas; struct niu_parent* parent; } ;


 int TCAM_ASSOCDATA_OFFSET_SHIFT ;
 int TCAM_ASSOCDATA_TRES_USE_OFFSET ;
 void* TCAM_V4KEY1_NOPORT ;
 int memset (struct niu_tcam_entry*,int ,int) ;
 int tcam_assoc_write (struct niu*,int,int) ;
 int tcam_write (struct niu*,int,void**,void**) ;

__attribute__((used)) static int niu_set_ip_frag_rule(struct niu *np)
{
 struct niu_parent *parent = np->parent;
 struct niu_classifier *cp = &np->clas;
 struct niu_tcam_entry *tp;
 int index, err;

 index = cp->tcam_top;
 tp = &parent->tcam[index];




 memset(tp, 0, sizeof(*tp));
 tp->key[1] = TCAM_V4KEY1_NOPORT;
 tp->key_mask[1] = TCAM_V4KEY1_NOPORT;
 tp->assoc_data = (TCAM_ASSOCDATA_TRES_USE_OFFSET |
     ((u64)0 << TCAM_ASSOCDATA_OFFSET_SHIFT));
 err = tcam_write(np, index, tp->key, tp->key_mask);
 if (err)
  return err;
 err = tcam_assoc_write(np, index, tp->assoc_data);
 if (err)
  return err;
 tp->valid = 1;
 cp->tcam_valid_entries++;

 return 0;
}
