
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {size_t model; int board; } ;


 int * cx231xx_boards ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline void cx231xx_set_model(struct cx231xx *dev)
{
 memcpy(&dev->board, &cx231xx_boards[dev->model], sizeof(dev->board));
}
