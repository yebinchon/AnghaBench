
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct average {int dummy; } ;


 int memset (struct average*,int ,int) ;

__attribute__((used)) static void inline average_init(struct average *avg)
{
 memset(avg, 0, sizeof(*avg));
}
