; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { %struct.TYPE_6__, %struct.file*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.soc_camera_host = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 (%struct.soc_camera_device*)* }
%struct.soc_camera_link = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"camera device close\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @soc_camera_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.soc_camera_host*, align 8
  %5 = alloca %struct.soc_camera_link*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  store %struct.soc_camera_device* %8, %struct.soc_camera_device** %3, align 8
  %9 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %10 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %12)
  store %struct.soc_camera_host* %13, %struct.soc_camera_host** %4, align 8
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %15 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %19 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %1
  %23 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %24 = call %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device* %23)
  store %struct.soc_camera_link* %24, %struct.soc_camera_link** %5, align 8
  %25 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %26 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @pm_runtime_suspend(i32* %28)
  %30 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %31 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @pm_runtime_disable(i32* %33)
  %35 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %36 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32 (%struct.soc_camera_device*)*, i32 (%struct.soc_camera_device*)** %38, align 8
  %40 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %41 = call i32 %39(%struct.soc_camera_device* %40)
  %42 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %43 = load %struct.soc_camera_link*, %struct.soc_camera_link** %5, align 8
  %44 = call i32 @soc_camera_power_set(%struct.soc_camera_device* %42, %struct.soc_camera_link* %43, i32 0)
  br label %45

45:                                               ; preds = %22, %1
  %46 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %47 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %46, i32 0, i32 1
  %48 = load %struct.file*, %struct.file** %47, align 8
  %49 = load %struct.file*, %struct.file** %2, align 8
  %50 = icmp eq %struct.file* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %53 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %52, i32 0, i32 1
  store %struct.file* null, %struct.file** %53, align 8
  br label %54

54:                                               ; preds = %51, %45
  %55 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %56 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @module_put(i32 %59)
  %61 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %62 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %61, i32 0, i32 0
  %63 = call i32 @dev_dbg(%struct.TYPE_6__* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device*) #1

declare dso_local i32 @pm_runtime_suspend(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @soc_camera_power_set(%struct.soc_camera_device*, %struct.soc_camera_link*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
