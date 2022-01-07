
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int word ;
struct TYPE_6__ {scalar_t__ length; int * info; } ;
typedef int PLCI ;
typedef TYPE_1__ API_PARSE ;


 int FTY ;
 int KEY ;
 int UUI ;
 int add_s (int *,int ,TYPE_1__*) ;
 int add_ss (int *,int ,TYPE_1__*) ;
 scalar_t__ api_parse (int *,int,char*,TYPE_1__*) ;

__attribute__((used)) static void add_ai(PLCI *plci, API_PARSE *ai)
{
  word i;
    API_PARSE ai_parms[5];

  for(i=0;i<5;i++) ai_parms[i].length = 0;

  if(!ai->length)
    return;
  if(api_parse(&ai->info[1], (word)ai->length, "ssss", ai_parms))
    return;

  add_s (plci,KEY,&ai_parms[1]);
  add_s (plci,UUI,&ai_parms[2]);
  add_ss(plci,FTY,&ai_parms[3]);
}
