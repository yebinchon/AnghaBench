
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int word ;
typedef size_t byte ;
struct TYPE_3__ {size_t length; size_t* info; } ;
typedef int PLCI ;
typedef TYPE_1__ API_PARSE ;


 int add_ie (int *,size_t,size_t*,int ) ;
 int dbug (int,int ) ;
 int dprintf (char*,size_t,size_t) ;

__attribute__((used)) static void add_ss(PLCI * plci, byte code, API_PARSE * p)
{
  byte i;

  if(p){
    dbug(1,dprintf("add_ss(%x,len=%d)",code,p->length));
    for(i=2;i<(byte)p->length;i+=p->info[i]+2){
      dbug(1,dprintf("add_ss_ie(%x,len=%d)",p->info[i-1],p->info[i]));
      add_ie(plci, p->info[i-1], (byte *)&(p->info[i]), (word)p->info[i]);
    }
  }
}
