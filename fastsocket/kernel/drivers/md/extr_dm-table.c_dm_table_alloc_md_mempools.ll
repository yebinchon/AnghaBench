; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_alloc_md_mempools.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_alloc_md_mempools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, i32 }

@DM_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"no table type is set, can't allocate mempools\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_table_alloc_md_mempools(%struct.dm_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_table*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %3, align 8
  %5 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %6 = call i32 @dm_table_get_type(%struct.dm_table* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @DM_TYPE_NONE, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 @DMWARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %20 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dm_alloc_md_mempools(i32 %18, i32 %21)
  %23 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %24 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %26 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @dm_table_get_type(%struct.dm_table*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @dm_alloc_md_mempools(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
