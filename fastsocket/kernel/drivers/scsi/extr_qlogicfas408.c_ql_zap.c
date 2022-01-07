
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlogicfas408_priv {int qbase; int int_type; } ;


 int REG0 ;
 int REG1 ;
 int inb (int) ;
 int outb (int,int) ;

__attribute__((used)) static void ql_zap(struct qlogicfas408_priv *priv)
{
 int x;
 int qbase = priv->qbase;
 int int_type = priv->int_type;

 x = inb(qbase + 0xd);
 REG0;
 outb(3, qbase + 3);
 outb(2, qbase + 3);
 if (x & 0x80)
  REG1;
}
