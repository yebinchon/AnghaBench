
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int __imm_attach (struct parport*) ;

__attribute__((used)) static void imm_attach(struct parport *pb)
{
 __imm_attach(pb);
}
