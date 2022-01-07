
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_4__ {int TupleDataMax; int Attributes; int DesiredTuple; scalar_t__ TupleOffset; int * TupleData; } ;
typedef TYPE_1__ tuple_t ;
struct pcmcia_device {int dummy; } ;
struct comedi_device {int dummy; } ;
typedef int cisdata_t ;


 int CISTPL_MANFID ;
 int TUPLE_RETURN_COMMON ;
 int le16_to_cpu (int ) ;
 scalar_t__ pcmcia_get_first_tuple (struct pcmcia_device*,TYPE_1__*) ;
 scalar_t__ pcmcia_get_tuple_data (struct pcmcia_device*,TYPE_1__*) ;

__attribute__((used)) static int get_prodid(struct comedi_device *dev, struct pcmcia_device *link)
{
 tuple_t tuple;
 u_short buf[128];
 int prodid = 0;

 tuple.TupleData = (cisdata_t *) buf;
 tuple.TupleOffset = 0;
 tuple.TupleDataMax = 255;
 tuple.DesiredTuple = CISTPL_MANFID;
 tuple.Attributes = TUPLE_RETURN_COMMON;
 if ((pcmcia_get_first_tuple(link, &tuple) == 0) &&
     (pcmcia_get_tuple_data(link, &tuple) == 0)) {
  prodid = le16_to_cpu(buf[1]);
 }

 return prodid;
}
