; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.file* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.soc_camera_host = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.file*, i32*)* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Trying to poll with no queued buffers!\0A\00", align 1
@POLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @soc_camera_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.soc_camera_device*, align 8
  %7 = alloca %struct.soc_camera_host*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.soc_camera_device*, %struct.soc_camera_device** %9, align 8
  store %struct.soc_camera_device* %10, %struct.soc_camera_device** %6, align 8
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %12 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %14)
  store %struct.soc_camera_host* %15, %struct.soc_camera_host** %7, align 8
  %16 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %17 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %16, i32 0, i32 2
  %18 = load %struct.file*, %struct.file** %17, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = icmp ne %struct.file* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %2
  %25 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %26 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i64 @list_empty(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %32 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_6__* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @POLLERR, align 4
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %24
  %36 = load %struct.soc_camera_host*, %struct.soc_camera_host** %7, align 8
  %37 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (%struct.file*, i32*)*, i32 (%struct.file*, i32*)** %39, align 8
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 %40(%struct.file* %41, i32* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %30, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
