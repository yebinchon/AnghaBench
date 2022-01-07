
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ppp_channel {struct channel* ppp; } ;
struct channel {int upl; TYPE_2__* ppp; } ;
struct TYPE_3__ {int index; } ;
struct TYPE_4__ {TYPE_1__ file; } ;


 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

int ppp_unit_number(struct ppp_channel *chan)
{
 struct channel *pch = chan->ppp;
 int unit = -1;

 if (pch) {
  read_lock_bh(&pch->upl);
  if (pch->ppp)
   unit = pch->ppp->file.index;
  read_unlock_bh(&pch->upl);
 }
 return unit;
}
