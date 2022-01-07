
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int TupleCode; int Attributes; int DesiredTuple; } ;
typedef TYPE_1__ tuple_t ;
struct pcmcia_socket {int dev; } ;
typedef TYPE_1__ cisparse_t ;


 int BIND_FN_ALL ;
 int CISTPL_CFTABLE_ENTRY ;
 int CISTPL_CFTABLE_ENTRY_CB ;
 int CISTPL_DEVICE ;
 int CISTPL_MANFID ;
 int CISTPL_VERS_1 ;
 int CISTPL_VERS_2 ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int KERN_WARNING ;
 unsigned int MAX_TUPLES ;
 int RETURN_FIRST_TUPLE ;
 int TUPLE_RETURN_COMMON ;
 int dev_printk (int ,int *,char*) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kmalloc (int,int ) ;
 int pccard_get_first_tuple (struct pcmcia_socket*,int ,TYPE_1__*) ;
 int pccard_get_next_tuple (struct pcmcia_socket*,int ,TYPE_1__*) ;
 int pccard_read_tuple (struct pcmcia_socket*,int ,int ,TYPE_1__*) ;

int pccard_validate_cis(struct pcmcia_socket *s, unsigned int *info)
{
    tuple_t *tuple;
    cisparse_t *p;
    unsigned int count = 0;
    int ret, reserved, dev_ok = 0, ident_ok = 0;

    if (!s)
 return -EINVAL;

    tuple = kmalloc(sizeof(*tuple), GFP_KERNEL);
    if (tuple == ((void*)0)) {
     dev_printk(KERN_WARNING, &s->dev, "no memory to validate CIS\n");
     return -ENOMEM;
    }
    p = kmalloc(sizeof(*p), GFP_KERNEL);
    if (p == ((void*)0)) {
     kfree(tuple);
     dev_printk(KERN_WARNING, &s->dev, "no memory to validate CIS\n");
     return -ENOMEM;
    }

    count = reserved = 0;
    tuple->DesiredTuple = RETURN_FIRST_TUPLE;
    tuple->Attributes = TUPLE_RETURN_COMMON;
    ret = pccard_get_first_tuple(s, BIND_FN_ALL, tuple);
    if (ret != 0)
 goto done;



    if ((tuple->TupleCode == CISTPL_DEVICE) ||
 (pccard_read_tuple(s, BIND_FN_ALL, CISTPL_CFTABLE_ENTRY, p) == 0) ||
 (pccard_read_tuple(s, BIND_FN_ALL, CISTPL_CFTABLE_ENTRY_CB, p) == 0))
 dev_ok++;




    if ((pccard_read_tuple(s, BIND_FN_ALL, CISTPL_MANFID, p) == 0) ||
 (pccard_read_tuple(s, BIND_FN_ALL, CISTPL_VERS_1, p) == 0) ||
 (pccard_read_tuple(s, BIND_FN_ALL, CISTPL_VERS_2, p) != -ENOSPC))
 ident_ok++;

    if (!dev_ok && !ident_ok)
 goto done;

    for (count = 1; count < MAX_TUPLES; count++) {
 ret = pccard_get_next_tuple(s, BIND_FN_ALL, tuple);
 if (ret != 0)
  break;
 if (((tuple->TupleCode > 0x23) && (tuple->TupleCode < 0x40)) ||
     ((tuple->TupleCode > 0x47) && (tuple->TupleCode < 0x80)) ||
     ((tuple->TupleCode > 0x90) && (tuple->TupleCode < 0xff)))
     reserved++;
    }
    if ((count == MAX_TUPLES) || (reserved > 5) ||
 ((!dev_ok || !ident_ok) && (count > 10)))
 count = 0;

done:
    if (info)
     *info = count;
    kfree(tuple);
    kfree(p);
    return 0;
}
