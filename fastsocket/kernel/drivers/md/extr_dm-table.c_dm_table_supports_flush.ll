; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_supports_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_supports_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.dm_target = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 (%struct.dm_target*, i32, i32*)* }

@device_flush_capable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*, i32)* @dm_table_supports_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_table_supports_flush(%struct.dm_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %47, %22, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %11 = call i32 @dm_table_get_num_targets(%struct.dm_table* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %8
  %14 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = call %struct.dm_target* @dm_table_get_target(%struct.dm_table* %14, i32 %15)
  store %struct.dm_target* %17, %struct.dm_target** %6, align 8
  %18 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %19 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %8

23:                                               ; preds = %13
  %24 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %25 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %49

29:                                               ; preds = %23
  %30 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %31 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64 (%struct.dm_target*, i32, i32*)*, i64 (%struct.dm_target*, i32, i32*)** %33, align 8
  %35 = icmp ne i64 (%struct.dm_target*, i32, i32*)* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %38 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64 (%struct.dm_target*, i32, i32*)*, i64 (%struct.dm_target*, i32, i32*)** %40, align 8
  %42 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %43 = load i32, i32* @device_flush_capable, align 4
  %44 = call i64 %41(%struct.dm_target* %42, i32 %43, i32* %5)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %49

47:                                               ; preds = %36, %29
  br label %8

48:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %46, %28
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @dm_table_get_num_targets(%struct.dm_table*) #1

declare dso_local %struct.dm_target* @dm_table_get_target(%struct.dm_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
