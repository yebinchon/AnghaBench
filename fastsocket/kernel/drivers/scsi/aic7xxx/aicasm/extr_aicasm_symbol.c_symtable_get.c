
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int count; } ;
typedef TYPE_1__ symbol_t ;
typedef int stored_ptr ;
typedef int new_symbol ;
struct TYPE_19__ {int (* get ) (TYPE_4__*,TYPE_2__*,TYPE_2__*,int ) ;scalar_t__ (* put ) (TYPE_4__*,TYPE_2__*,TYPE_2__*,int ) ;} ;
struct TYPE_18__ {int size; TYPE_1__** data; } ;
typedef TYPE_2__ DBT ;


 int EX_SOFTWARE ;
 int exit (int ) ;
 int memcpy (TYPE_1__**,TYPE_1__**,int) ;
 int perror (char*) ;
 int strlen (char*) ;
 int stub1 (TYPE_4__*,TYPE_2__*,TYPE_2__*,int ) ;
 scalar_t__ stub2 (TYPE_4__*,TYPE_2__*,TYPE_2__*,int ) ;
 scalar_t__ stub3 (TYPE_4__*,TYPE_2__*,TYPE_2__*,int ) ;
 TYPE_1__* symbol_create (char*) ;
 TYPE_4__* symtable ;

symbol_t *
symtable_get(char *name)
{
 symbol_t *stored_ptr;
 DBT key;
 DBT data;
 int retval;

 key.data = (void *)name;
 key.size = strlen(name);

 if ((retval = symtable->get(symtable, &key, &data, 0)) != 0) {
  if (retval == -1) {
   perror("Symbol table get operation failed");
   exit(EX_SOFTWARE);

  } else if (retval == 1) {

   symbol_t *new_symbol;

   new_symbol = symbol_create(name);
   data.data = &new_symbol;
   data.size = sizeof(new_symbol);
   if (symtable->put(symtable, &key, &data,
                0) !=0) {
    perror("Symtable put failed");
    exit(EX_SOFTWARE);
   }
   return (new_symbol);
  } else {
   perror("Unexpected return value from db get routine");
   exit(EX_SOFTWARE);

  }
 }
 memcpy(&stored_ptr, data.data, sizeof(stored_ptr));
 stored_ptr->count++;
 data.data = &stored_ptr;
 if (symtable->put(symtable, &key, &data, 0) !=0) {
  perror("Symtable put failed");
  exit(EX_SOFTWARE);
 }
 return (stored_ptr);
}
