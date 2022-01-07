
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int dummy; } ;


 int PT1_NR_ADAPS ;
 int pt1_set_stream (struct pt1*,int,int ) ;

__attribute__((used)) static void pt1_init_streams(struct pt1 *pt1)
{
 int i;
 for (i = 0; i < PT1_NR_ADAPS; i++)
  pt1_set_stream(pt1, i, 0);
}
