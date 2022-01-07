
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_part_parser {int list; } ;


 int list_add (int *,int *) ;
 int part_parser_lock ;
 int part_parsers ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int register_mtd_parser(struct mtd_part_parser *p)
{
 spin_lock(&part_parser_lock);
 list_add(&p->list, &part_parsers);
 spin_unlock(&part_parser_lock);

 return 0;
}
