
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DB_RESET ;

__attribute__((used)) static inline int is_db_reset(int db_out)
{
 return db_out & (1 << DB_RESET);
}
