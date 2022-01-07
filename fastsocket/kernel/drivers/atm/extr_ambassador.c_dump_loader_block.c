
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * data; } ;
struct TYPE_6__ {int valid; TYPE_1__ payload; int command; int result; } ;
typedef TYPE_2__ loader_block ;


 int DBG_LOAD ;
 unsigned int MAX_COMMAND_DATA ;
 int PRINTDB (int ,char*,TYPE_2__ volatile*,int ,int ) ;
 int PRINTDE (int ,char*,int ) ;
 int PRINTDM (int ,char*,int ) ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static inline void dump_loader_block (volatile loader_block * lb) {
  (void) lb;

  return;
}
