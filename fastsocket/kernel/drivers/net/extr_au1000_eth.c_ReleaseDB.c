
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct au1000_private {TYPE_1__* pDBfree; } ;
struct TYPE_3__ {struct TYPE_3__* pnext; } ;
typedef TYPE_1__ db_dest_t ;



void ReleaseDB(struct au1000_private *aup, db_dest_t *pDB)
{
 db_dest_t *pDBfree = aup->pDBfree;
 if (pDBfree)
  pDBfree->pnext = pDB;
 aup->pDBfree = pDB;
}
