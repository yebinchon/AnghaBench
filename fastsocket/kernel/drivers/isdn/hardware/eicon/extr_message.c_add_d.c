
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t word ;
typedef int byte ;
struct TYPE_3__ {scalar_t__ req_in; scalar_t__ req_in_start; int * RBuffer; } ;
typedef TYPE_1__ PLCI ;



__attribute__((used)) static void add_d(PLCI *plci, word length, byte *p)
{
  word i;

  if(plci->req_in==plci->req_in_start) {
    plci->req_in +=2;
  }
  else {
    plci->req_in--;
  }
  for(i=0;i<length;i++) plci->RBuffer[plci->req_in++] = p[i];
}
