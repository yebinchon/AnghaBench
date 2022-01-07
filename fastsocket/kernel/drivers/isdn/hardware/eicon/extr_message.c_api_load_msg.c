
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t word ;
struct TYPE_8__ {int length; scalar_t__ info; } ;
struct TYPE_7__ {TYPE_1__* parms; } ;
struct TYPE_6__ {int length; scalar_t__ info; } ;
typedef TYPE_2__ API_SAVE ;
typedef TYPE_3__ API_PARSE ;



__attribute__((used)) static void api_load_msg(API_SAVE *in, API_PARSE *out)
{
  word i;

  i = 0;
  do
  {
    out[i].info = in->parms[i].info;
    out[i].length = in->parms[i].length;
  } while (in->parms[i++].info);
}
