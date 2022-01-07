
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int* data; } ;
typedef TYPE_1__ diva_trace_ie_t ;


 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void print_ie (diva_trace_ie_t* ie, char* buffer, int length) {
 int i;

  buffer[0] = 0;

  if (length > 32) {
    for (i = 0; ((i < ie->length) && (length > 3)); i++) {
      sprintf (buffer, "%02x", ie->data[i]);
      buffer += 2;
      length -= 2;
      if (i < (ie->length-1)) {
        strcpy (buffer, " ");
        buffer++;
        length--;
      }
    }
  }
}
