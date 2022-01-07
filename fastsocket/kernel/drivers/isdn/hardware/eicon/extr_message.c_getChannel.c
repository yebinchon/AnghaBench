
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t byte ;
struct TYPE_3__ {int* info; scalar_t__ length; } ;
typedef TYPE_1__ API_PARSE ;


 int CHI ;
 int ESC ;

__attribute__((used)) static byte getChannel(API_PARSE * p)
{
  byte i;

  if(p){
    for(i=2;i<(byte)p->length;i+=p->info[i]+2){
      if(p->info[i]==2){
        if(p->info[i-1]==ESC && p->info[i+1]==CHI) return (p->info[i+2]);
      }
    }
  }
  return 0;
}
