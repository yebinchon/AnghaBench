
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct operand {int flags; } ;
struct insn {char* name; size_t format; } ;


 int OPERAND_AR ;
 int OPERAND_BASE ;
 int OPERAND_CR ;
 int OPERAND_DISP ;
 int OPERAND_FPR ;
 int OPERAND_GPR ;
 int OPERAND_INDEX ;
 int OPERAND_PCREL ;
 int OPERAND_SIGNED ;
 unsigned int extract_operand (unsigned char*,struct operand const*) ;
 struct insn* find_insn (unsigned char*) ;
 unsigned char** formats ;
 char** long_insn_name ;
 struct operand* operands ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int print_insn(char *buffer, unsigned char *code, unsigned long addr)
{
 struct insn *insn;
 const unsigned char *ops;
 const struct operand *operand;
 unsigned int value;
 char separator;
 char *ptr;
 int i;

 ptr = buffer;
 insn = find_insn(code);
 if (insn) {
  if (insn->name[0] == '\0')
   ptr += sprintf(ptr, "%s\t",
           long_insn_name[(int) insn->name[1]]);
  else
   ptr += sprintf(ptr, "%.5s\t", insn->name);

  separator = 0;
  for (ops = formats[insn->format] + 1, i = 0;
       *ops != 0 && i < 6; ops++, i++) {
   operand = operands + *ops;
   value = extract_operand(code, operand);
   if ((operand->flags & OPERAND_INDEX) && value == 0)
    continue;
   if ((operand->flags & OPERAND_BASE) &&
       value == 0 && separator == '(') {
    separator = ',';
    continue;
   }
   if (separator)
    ptr += sprintf(ptr, "%c", separator);
   if (operand->flags & OPERAND_GPR)
    ptr += sprintf(ptr, "%%r%i", value);
   else if (operand->flags & OPERAND_FPR)
    ptr += sprintf(ptr, "%%f%i", value);
   else if (operand->flags & OPERAND_AR)
    ptr += sprintf(ptr, "%%a%i", value);
   else if (operand->flags & OPERAND_CR)
    ptr += sprintf(ptr, "%%c%i", value);
   else if (operand->flags & OPERAND_PCREL)
    ptr += sprintf(ptr, "%lx", (signed int) value
              + addr);
   else if (operand->flags & OPERAND_SIGNED)
    ptr += sprintf(ptr, "%i", value);
   else
    ptr += sprintf(ptr, "%u", value);
   if (operand->flags & OPERAND_DISP)
    separator = '(';
   else if (operand->flags & OPERAND_BASE) {
    ptr += sprintf(ptr, ")");
    separator = ',';
   } else
    separator = ',';
  }
 } else
  ptr += sprintf(ptr, "unknown");
 return (int) (ptr - buffer);
}
