
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attribute {int mode; } ;


 int S_IRUGO ;

__attribute__((used)) static void make_attrs_ro(struct attribute **attrs)
{
 while (*attrs) {
  (*attrs)->mode = S_IRUGO;
  attrs++;
 }
}
