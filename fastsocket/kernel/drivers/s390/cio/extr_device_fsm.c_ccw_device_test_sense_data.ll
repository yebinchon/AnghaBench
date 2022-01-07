; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_test_sense_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_test_sense_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_device_test_sense_data(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %3 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %4 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %6, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %1
  %15 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %20 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %18, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %14
  %27 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %28 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %32 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %30, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %26
  %39 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %40 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %44 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %42, %48
  br label %50

50:                                               ; preds = %38, %26, %14, %1
  %51 = phi i1 [ false, %26 ], [ false, %14 ], [ false, %1 ], [ %49, %38 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
