
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn_field {int value; int* bytes; int got; int nbytes; } ;
typedef int FILE ;


 int fprintf (int *,char*,char const*,...) ;

__attribute__((used)) static void dump_field(FILE *fp, const char *name, const char *indent,
         struct insn_field *field)
{
 fprintf(fp, "%s.%s = {\n", indent, name);
 fprintf(fp, "%s\t.value = %d, bytes[] = {%x, %x, %x, %x},\n",
  indent, field->value, field->bytes[0], field->bytes[1],
  field->bytes[2], field->bytes[3]);
 fprintf(fp, "%s\t.got = %d, .nbytes = %d},\n", indent,
  field->got, field->nbytes);
}
