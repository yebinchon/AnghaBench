; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwreq.c_ccwreq_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwreq.c_ccwreq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ccw_request }
%struct.ccw_request = type { i32, i32, i32, i32 (%struct.ccw_device.0*, i32, i32)* }
%struct.ccw_device.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccwreq_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccwreq_stop(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccw_request*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store %struct.ccw_request* %9, %struct.ccw_request** %5, align 8
  %10 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %11 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %17 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %19 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %18, i32 0)
  %20 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %21 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @memset(i32* %23, i32 0, i32 4)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %34 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %39 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %32, %27, %15
  %42 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %43 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %42, i32 0, i32 3
  %44 = load i32 (%struct.ccw_device.0*, i32, i32)*, i32 (%struct.ccw_device.0*, i32, i32)** %43, align 8
  %45 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %46 = bitcast %struct.ccw_device* %45 to %struct.ccw_device.0*
  %47 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %48 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 %44(%struct.ccw_device.0* %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %14
  ret void
}

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
