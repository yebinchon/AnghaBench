
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLAW_DBF_TEXT_ (int,int ,char*,int) ;
 int trace ;

__attribute__((used)) static int
pages_to_order_of_mag(int num_of_pages)
{
 int order_of_mag=1;
 int nump;

 CLAW_DBF_TEXT_(5, trace, "pages%d", num_of_pages);
 if (num_of_pages == 1) {return 0; }

 if (num_of_pages >= 512) {return 9; }

 for (nump=2 ;nump <= 512;nump*=2) {
   if (num_of_pages <= nump)
    break;
   order_of_mag +=1;
 }
 if (order_of_mag > 9) { order_of_mag = 9; }
 CLAW_DBF_TEXT_(5, trace, "mag%d", order_of_mag);
 return order_of_mag;
}
