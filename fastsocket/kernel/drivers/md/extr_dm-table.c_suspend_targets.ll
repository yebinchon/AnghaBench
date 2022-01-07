; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_suspend_targets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_suspend_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, %struct.dm_target* }
%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_table*, i32)* @suspend_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @suspend_targets(%struct.dm_table* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %8 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %11 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %10, i32 0, i32 1
  %12 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  store %struct.dm_target* %12, %struct.dm_target** %6, align 8
  br label %13

13:                                               ; preds = %52, %2
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %24, align 8
  %26 = icmp ne i32 (%struct.dm_target*)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %29 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %31, align 8
  %33 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %34 = call i32 %32(%struct.dm_target* %33)
  br label %35

35:                                               ; preds = %27, %20
  br label %52

36:                                               ; preds = %17
  %37 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %38 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %40, align 8
  %42 = icmp ne i32 (%struct.dm_target*)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %45 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %47, align 8
  %49 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %50 = call i32 %48(%struct.dm_target* %49)
  br label %51

51:                                               ; preds = %43, %36
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %54 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %53, i32 1
  store %struct.dm_target* %54, %struct.dm_target** %6, align 8
  br label %13

55:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
