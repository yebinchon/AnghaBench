; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_enable_cmf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_enable_cmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*, i32)*, i32 (%struct.ccw_device*)*, i32, i32 (%struct.ccw_device*)* }
%struct.ccw_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cmbops = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enable_cmf(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmbops, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %6, align 8
  %8 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %9 = call i32 %7(%struct.ccw_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmbops, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %11, align 8
  %13 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %14 = call i32 %12(%struct.ccw_device* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmbops, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32 (%struct.ccw_device*, i32)*, i32 (%struct.ccw_device*, i32)** %21, align 8
  %23 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %24 = call i32 %22(%struct.ccw_device* %23, i32 2)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmbops, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %29, align 8
  %31 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %32 = call i32 %30(%struct.ccw_device* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %57

34:                                               ; preds = %19
  %35 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmbops, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sysfs_create_group(i32* %37, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %57

45:                                               ; preds = %34
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmbops, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32 (%struct.ccw_device*, i32)*, i32 (%struct.ccw_device*, i32)** %47, align 8
  %49 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %50 = call i32 %48(%struct.ccw_device* %49, i32 0)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmbops, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %52, align 8
  %54 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %55 = call i32 %53(%struct.ccw_device* %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %45, %44, %27, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @sysfs_create_group(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
