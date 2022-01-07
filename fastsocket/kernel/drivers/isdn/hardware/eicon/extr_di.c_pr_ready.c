
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ byte ;
struct TYPE_8__ {int ReadyInt; int ReqInput; int ReqOutput; } ;
struct TYPE_7__ {int ReadyInt; int (* ram_inc ) (TYPE_1__*,int *) ;scalar_t__ (* ram_in ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ ADAPTER ;


 TYPE_6__* PR_RAM ;
 scalar_t__ stub1 (TYPE_1__*,int *) ;
 scalar_t__ stub2 (TYPE_1__*,int *) ;
 int stub3 (TYPE_1__*,int *) ;

__attribute__((used)) static byte pr_ready(ADAPTER * a)
{
  byte ReadyCount;
  ReadyCount = (byte)(a->ram_in(a, &PR_RAM->ReqOutput) -
                      a->ram_in(a, &PR_RAM->ReqInput));
  if(!ReadyCount) {
    if(!a->ReadyInt) {
      a->ram_inc(a, &PR_RAM->ReadyInt);
      a->ReadyInt++;
    }
  }
  return ReadyCount;
}
