
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DB_HASH ;
 int EX_SOFTWARE ;
 int O_CREAT ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int * dbopen (int *,int,int ,int ,int *) ;
 int exit (int ) ;
 int perror (char*) ;
 int * symtable ;

void
symtable_open()
{
 symtable = dbopen( ((void*)0),
     O_CREAT | O_NONBLOCK | O_RDWR, 0, DB_HASH,
                 ((void*)0));

 if (symtable == ((void*)0)) {
  perror("Symbol table creation failed");
  exit(EX_SOFTWARE);

 }
}
