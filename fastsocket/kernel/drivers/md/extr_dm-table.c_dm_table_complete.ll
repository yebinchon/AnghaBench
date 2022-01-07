; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"unable to set table type\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unable to build btrees\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"could not register integrity profile.\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to allocate mempools\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_table_complete(%struct.dm_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_table*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %3, align 8
  %5 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %6 = call i32 @dm_table_set_type(%struct.dm_table* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 @DMERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %14 = call i32 @dm_table_build_index(%struct.dm_table* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = call i32 @DMERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %12
  %21 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %22 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %23 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dm_table_prealloc_integrity(%struct.dm_table* %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = call i32 @DMERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %20
  %32 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %33 = call i32 @dm_table_alloc_md_mempools(%struct.dm_table* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @DMERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %28, %17, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @dm_table_set_type(%struct.dm_table*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_table_build_index(%struct.dm_table*) #1

declare dso_local i32 @dm_table_prealloc_integrity(%struct.dm_table*, i32) #1

declare dso_local i32 @dm_table_alloc_md_mempools(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
