
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct au1k_private {TYPE_1__* pDBfree; } ;
struct TYPE_3__ {struct TYPE_3__* pnext; } ;
typedef TYPE_1__ db_dest_t ;



__attribute__((used)) static db_dest_t *GetFreeDB(struct au1k_private *aup)
{
 db_dest_t *pDB;
 pDB = aup->pDBfree;

 if (pDB) {
  aup->pDBfree = pDB->pnext;
 }
 return pDB;
}
