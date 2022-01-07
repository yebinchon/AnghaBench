; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c___hash_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c___hash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_cell = type { i32, i64, i32, i32 }
%struct.dm_table = type { i32 }

@dm_hash_cells_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_cell*)* @__hash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hash_remove(%struct.hash_cell* %0) #0 {
  %2 = alloca %struct.hash_cell*, align 8
  %3 = alloca %struct.dm_table*, align 8
  store %struct.hash_cell* %0, %struct.hash_cell** %2, align 8
  %4 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %5 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %4, i32 0, i32 3
  %6 = call i32 @list_del(i32* %5)
  %7 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %8 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %7, i32 0, i32 2
  %9 = call i32 @list_del(i32* %8)
  %10 = call i32 @mutex_lock(i32* @dm_hash_cells_mutex)
  %11 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %12 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dm_set_mdptr(i32 %13, i32* null)
  %15 = call i32 @mutex_unlock(i32* @dm_hash_cells_mutex)
  %16 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %17 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.dm_table* @dm_get_live_table(i32 %18)
  store %struct.dm_table* %19, %struct.dm_table** %3, align 8
  %20 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %21 = icmp ne %struct.dm_table* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %24 = call i32 @dm_table_event(%struct.dm_table* %23)
  %25 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %26 = call i32 @dm_table_put(%struct.dm_table* %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %29 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %34 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dm_table_destroy(i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %39 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dm_put(i32 %40)
  %42 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %43 = call i32 @free_cell(%struct.hash_cell* %42)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dm_set_mdptr(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.dm_table* @dm_get_live_table(i32) #1

declare dso_local i32 @dm_table_event(%struct.dm_table*) #1

declare dso_local i32 @dm_table_put(%struct.dm_table*) #1

declare dso_local i32 @dm_table_destroy(i64) #1

declare dso_local i32 @dm_put(i32) #1

declare dso_local i32 @free_cell(%struct.hash_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
