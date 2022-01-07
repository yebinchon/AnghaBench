
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pms_vert (unsigned short,unsigned short) ;

__attribute__((used)) static void pms_vertdeci(unsigned short decinum, unsigned short deciden)
{

 if(decinum%5==0)
 {
  deciden/=5;
  decinum/=5;
 }



 while(decinum%3==0 && deciden%3==0)
 {
  deciden/=3;
  decinum/=3;
 }



 while(decinum%2==0 && deciden%2==0)
 {
  decinum/=2;
  deciden/=2;
 }



 while(deciden>32)
 {
  deciden/=2;
  decinum=(decinum+1)/2;
 }
 if(deciden==32)
  deciden--;
 pms_vert(deciden,decinum);
}
