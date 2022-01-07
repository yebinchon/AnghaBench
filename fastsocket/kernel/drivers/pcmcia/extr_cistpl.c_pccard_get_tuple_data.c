
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ TupleLink; scalar_t__ TupleOffset; scalar_t__ TupleDataLen; scalar_t__ CISOffset; int TupleData; int TupleDataMax; int Flags; } ;
typedef TYPE_1__ tuple_t ;
struct pcmcia_socket {int dummy; } ;


 int EINVAL ;
 int ENOSPC ;
 int SPACE (int ) ;
 int _MIN (scalar_t__,int ) ;
 int read_cis_cache (struct pcmcia_socket*,int ,scalar_t__,int ,int ) ;

int pccard_get_tuple_data(struct pcmcia_socket *s, tuple_t *tuple)
{
    u_int len;

    if (!s)
 return -EINVAL;

    if (tuple->TupleLink < tuple->TupleOffset)
 return -ENOSPC;
    len = tuple->TupleLink - tuple->TupleOffset;
    tuple->TupleDataLen = tuple->TupleLink;
    if (len == 0)
 return 0;
    read_cis_cache(s, SPACE(tuple->Flags),
     tuple->CISOffset + tuple->TupleOffset,
     _MIN(len, tuple->TupleDataMax), tuple->TupleData);
    return 0;
}
