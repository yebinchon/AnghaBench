
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int machine_restart (char*) ;

__attribute__((used)) static void
kill_restart ()
{
 machine_restart("");
}
