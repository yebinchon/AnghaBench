; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_get_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_get_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32 }
%struct.dm_table = type { i32, %struct.dm_target* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_target* @dm_table_get_target(%struct.dm_table* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %8 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp uge i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.dm_target* null, %struct.dm_target** %3, align 8
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %14 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %13, i32 0, i32 1
  %15 = load %struct.dm_target*, %struct.dm_target** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i64 %17
  store %struct.dm_target* %18, %struct.dm_target** %3, align 8
  br label %19

19:                                               ; preds = %12, %11
  %20 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  ret %struct.dm_target* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
