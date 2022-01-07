; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32, %struct.TYPE_6__, i64, %struct.regulator*, %struct.regulator_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.regulator* }
%struct.regulator_dev = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@regulator_list_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regulator_put(%struct.regulator* %0) #0 {
  %2 = alloca %struct.regulator*, align 8
  %3 = alloca %struct.regulator_dev*, align 8
  store %struct.regulator* %0, %struct.regulator** %2, align 8
  %4 = load %struct.regulator*, %struct.regulator** %2, align 8
  %5 = icmp eq %struct.regulator* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.regulator*, %struct.regulator** %2, align 8
  %8 = call i64 @IS_ERR(%struct.regulator* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  br label %61

11:                                               ; preds = %6
  %12 = call i32 @mutex_lock(i32* @regulator_list_mutex)
  %13 = load %struct.regulator*, %struct.regulator** %2, align 8
  %14 = getelementptr inbounds %struct.regulator, %struct.regulator* %13, i32 0, i32 4
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %14, align 8
  store %struct.regulator_dev* %15, %struct.regulator_dev** %3, align 8
  %16 = load %struct.regulator*, %struct.regulator** %2, align 8
  %17 = getelementptr inbounds %struct.regulator, %struct.regulator* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %11
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %22 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.regulator*, %struct.regulator** %2, align 8
  %25 = getelementptr inbounds %struct.regulator, %struct.regulator* %24, i32 0, i32 3
  %26 = load %struct.regulator*, %struct.regulator** %25, align 8
  %27 = call i32 @sysfs_remove_link(i32* %23, %struct.regulator* %26)
  %28 = load %struct.regulator*, %struct.regulator** %2, align 8
  %29 = getelementptr inbounds %struct.regulator, %struct.regulator* %28, i32 0, i32 3
  %30 = load %struct.regulator*, %struct.regulator** %29, align 8
  %31 = call i32 @kfree(%struct.regulator* %30)
  %32 = load %struct.regulator*, %struct.regulator** %2, align 8
  %33 = getelementptr inbounds %struct.regulator, %struct.regulator* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.regulator*, %struct.regulator** %2, align 8
  %36 = getelementptr inbounds %struct.regulator, %struct.regulator* %35, i32 0, i32 1
  %37 = call i32 @device_remove_file(i64 %34, %struct.TYPE_6__* %36)
  %38 = load %struct.regulator*, %struct.regulator** %2, align 8
  %39 = getelementptr inbounds %struct.regulator, %struct.regulator* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.regulator*, %struct.regulator** %41, align 8
  %43 = call i32 @kfree(%struct.regulator* %42)
  br label %44

44:                                               ; preds = %20, %11
  %45 = load %struct.regulator*, %struct.regulator** %2, align 8
  %46 = getelementptr inbounds %struct.regulator, %struct.regulator* %45, i32 0, i32 0
  %47 = call i32 @list_del(i32* %46)
  %48 = load %struct.regulator*, %struct.regulator** %2, align 8
  %49 = call i32 @kfree(%struct.regulator* %48)
  %50 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %51 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %55 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %57 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @module_put(i32 %58)
  %60 = call i32 @mutex_unlock(i32* @regulator_list_mutex)
  br label %61

61:                                               ; preds = %44, %10
  ret void
}

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sysfs_remove_link(i32*, %struct.regulator*) #1

declare dso_local i32 @kfree(%struct.regulator*) #1

declare dso_local i32 @device_remove_file(i64, %struct.TYPE_6__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
