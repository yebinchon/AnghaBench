
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bi_record {unsigned long* data; int tag; } ;



 unsigned long apollo_model ;

int apollo_parse_bootinfo(const struct bi_record *record) {

 int unknown = 0;
 const unsigned long *data = record->data;

 switch(record->tag) {
  case 128:
   apollo_model=*data;
   break;

  default:
    unknown=1;
 }

 return unknown;
}
