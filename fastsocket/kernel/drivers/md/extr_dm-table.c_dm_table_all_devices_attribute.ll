; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_all_devices_attribute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_all_devices_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_target*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*, i32)* @dm_table_all_devices_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_table_all_devices_attribute(%struct.dm_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %35, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %11 = call i32 @dm_table_get_num_targets(%struct.dm_table* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = call %struct.dm_target* @dm_table_get_target(%struct.dm_table* %14, i32 %15)
  store %struct.dm_target* %17, %struct.dm_target** %6, align 8
  %18 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %19 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dm_target*, i32, i32*)*, i32 (%struct.dm_target*, i32, i32*)** %21, align 8
  %23 = icmp ne i32 (%struct.dm_target*, i32, i32*)* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %13
  %25 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %26 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dm_target*, i32, i32*)*, i32 (%struct.dm_target*, i32, i32*)** %28, align 8
  %30 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 %29(%struct.dm_target* %30, i32 %31, i32* null)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24, %13
  store i32 0, i32* %3, align 4
  br label %37

35:                                               ; preds = %24
  br label %8

36:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %34
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @dm_table_get_num_targets(%struct.dm_table*) #1

declare dso_local %struct.dm_target* @dm_table_get_target(%struct.dm_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
