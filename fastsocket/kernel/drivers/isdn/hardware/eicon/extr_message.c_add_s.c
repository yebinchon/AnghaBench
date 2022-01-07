
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int word ;
typedef int byte ;
struct TYPE_3__ {scalar_t__ length; int info; } ;
typedef int PLCI ;
typedef TYPE_1__ API_PARSE ;


 int add_ie (int *,int ,int ,int ) ;

__attribute__((used)) static void add_s(PLCI * plci, byte code, API_PARSE * p)
{
  if(p) add_ie(plci, code, p->info, (word)p->length);
}
