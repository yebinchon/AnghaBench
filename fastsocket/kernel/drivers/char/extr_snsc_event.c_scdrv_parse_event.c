
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHUNKSIZE ;
 int IR_ARG_ASCII ;
 int IR_ARG_INT ;
 int get_unaligned_be32 (char*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int
scdrv_parse_event(char *event, int *src, int *code, int *esp_code, char *desc)
{
 char *desc_end;


 *src = get_unaligned_be32(event);
 event += 4;


 *code = get_unaligned_be32(event);
 event += 4;


 if (*event++ != 2) {

  return -1;
 }


 if (*event++ != IR_ARG_INT) {

  return -1;
 }
 *esp_code = get_unaligned_be32(event);
 event += 4;


 if (*event++ != IR_ARG_ASCII) {

  return -1;
 }
 event[CHUNKSIZE-1] = '\0';
 event += 2;
 desc_end = desc + sprintf(desc, "%s", event);


 for (desc_end--;
      (desc_end != desc) && ((*desc_end == 0xd) || (*desc_end == 0xa));
      desc_end--) {
  *desc_end = '\0';
 }

 return 0;
}
