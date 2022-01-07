
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct txdone_entry_desc {scalar_t__ retry; scalar_t__ flags; } ;
struct queue_entry {int dummy; } ;


 int __set_bit (int ,scalar_t__*) ;
 int rt2x00lib_txdone (struct queue_entry*,struct txdone_entry_desc*) ;

void rt2x00lib_txdone_noinfo(struct queue_entry *entry, u32 status)
{
 struct txdone_entry_desc txdesc;

 txdesc.flags = 0;
 __set_bit(status, &txdesc.flags);
 txdesc.retry = 0;

 rt2x00lib_txdone(entry, &txdesc);
}
