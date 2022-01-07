; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dm_get_inactive_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dm_get_inactive_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.mapped_device = type { i32 }
%struct.hash_cell = type { %struct.dm_table*, %struct.mapped_device* }

@_hash_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"device has been removed from the dev hash table.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_table* (%struct.mapped_device*)* @dm_get_inactive_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_table* @dm_get_inactive_table(%struct.mapped_device* %0) #0 {
  %2 = alloca %struct.mapped_device*, align 8
  %3 = alloca %struct.hash_cell*, align 8
  %4 = alloca %struct.dm_table*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %2, align 8
  store %struct.dm_table* null, %struct.dm_table** %4, align 8
  %5 = call i32 @down_read(i32* @_hash_lock)
  %6 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %7 = call %struct.hash_cell* @dm_get_mdptr(%struct.mapped_device* %6)
  store %struct.hash_cell* %7, %struct.hash_cell** %3, align 8
  %8 = load %struct.hash_cell*, %struct.hash_cell** %3, align 8
  %9 = icmp ne %struct.hash_cell* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.hash_cell*, %struct.hash_cell** %3, align 8
  %12 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %11, i32 0, i32 1
  %13 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %14 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %15 = icmp ne %struct.mapped_device* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10, %1
  %17 = call i32 @DMWARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %28

18:                                               ; preds = %10
  %19 = load %struct.hash_cell*, %struct.hash_cell** %3, align 8
  %20 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %19, i32 0, i32 0
  %21 = load %struct.dm_table*, %struct.dm_table** %20, align 8
  store %struct.dm_table* %21, %struct.dm_table** %4, align 8
  %22 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %23 = icmp ne %struct.dm_table* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %26 = call i32 @dm_table_get(%struct.dm_table* %25)
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27, %16
  %29 = call i32 @up_read(i32* @_hash_lock)
  %30 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  ret %struct.dm_table* %30
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.hash_cell* @dm_get_mdptr(%struct.mapped_device*) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @dm_table_get(%struct.dm_table*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
