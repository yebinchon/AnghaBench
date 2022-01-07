
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct va_format {int * va; int fmt; } ;
struct printf_spec {int field_width; int base; int flags; } ;


 int CAP_SYS_ADMIN ;
 int SMALL ;
 int ZEROPAD ;
 int current ;
 void* dereference_function_descriptor (void*) ;
 int has_capability_noaudit (int ,int ) ;
 int in_irq () ;
 int in_nmi () ;
 int in_softirq () ;
 char* ip4_addr_string (char*,char*,void*,struct printf_spec,char const*) ;
 char* ip6_addr_string (char*,char*,void*,struct printf_spec,char const*) ;
 int kptr_restrict ;
 char* mac_address_string (char*,char*,void*,struct printf_spec,char const*) ;
 char* number (char*,char*,unsigned long,struct printf_spec) ;
 char* resource_string (char*,char*,void*,struct printf_spec,char const*) ;
 char* string (char*,char*,char*,struct printf_spec) ;
 char* symbol_string (char*,char*,void*,struct printf_spec,char const) ;
 char* uuid_string (char*,char*,void*,struct printf_spec,char const*) ;
 int vsnprintf (char*,int,int ,int ) ;

__attribute__((used)) static char *pointer(const char *fmt, char *buf, char *end, void *ptr,
   struct printf_spec spec)
{
 if (!ptr && *fmt != 'K')
  return string(buf, end, "(null)", spec);

 switch (*fmt) {
 case 'F':
 case 'f':
  ptr = dereference_function_descriptor(ptr);

 case 'S':
 case 's':
  return symbol_string(buf, end, ptr, spec, *fmt);
 case 'R':
 case 'r':
  return resource_string(buf, end, ptr, spec, fmt);
 case 'M':
 case 'm':
  return mac_address_string(buf, end, ptr, spec, fmt);
 case 'I':




 case 'i':



  switch (fmt[1]) {
  case '6':
   return ip6_addr_string(buf, end, ptr, spec, fmt);
  case '4':
   return ip4_addr_string(buf, end, ptr, spec, fmt);
  }
  break;
 case 'K':




  if (in_irq() || in_softirq() || in_nmi()) {
   if (spec.field_width == -1)
    spec.field_width = 2 * sizeof(void *);
   return string(buf, end, "pK-error", spec);
  } else if ((kptr_restrict == 0) ||
    (kptr_restrict == 1 &&
     has_capability_noaudit(current, CAP_SYS_ADMIN)))
   break;

  if (spec.field_width == -1) {
   spec.field_width = 2 * sizeof(void *);
   spec.flags |= ZEROPAD;
  }
  return number(buf, end, 0, spec);
 case 'U':
  return uuid_string(buf, end, ptr, spec, fmt);
 case 'V':
  return buf + vsnprintf(buf, end - buf,
           ((struct va_format *)ptr)->fmt,
           *(((struct va_format *)ptr)->va));
 }
 spec.flags |= SMALL;
 if (spec.field_width == -1) {
  spec.field_width = 2*sizeof(void *);
  spec.flags |= ZEROPAD;
 }
 spec.base = 16;

 return number(buf, end, (unsigned long) ptr, spec);
}
