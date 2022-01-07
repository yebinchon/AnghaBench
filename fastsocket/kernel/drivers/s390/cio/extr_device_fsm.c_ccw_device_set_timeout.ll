; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@ccw_device_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_set_timeout(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @del_timer(%struct.TYPE_7__* %11)
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i64 @timer_pending(%struct.TYPE_7__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i64 @mod_timer(%struct.TYPE_7__* %24, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %61

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %13
  %34 = load i32, i32* @ccw_device_timeout, align 4
  %35 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32 %34, i32* %39, align 8
  %40 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %41 = ptrtoint %struct.ccw_device* %40 to i64
  %42 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %43 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i64 %41, i64* %46, align 8
  %47 = load i64, i64* @jiffies, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %52 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i64 %50, i64* %55, align 8
  %56 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %57 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @add_timer(%struct.TYPE_7__* %59)
  br label %61

61:                                               ; preds = %33, %31, %7
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_7__*) #1

declare dso_local i64 @timer_pending(%struct.TYPE_7__*) #1

declare dso_local i64 @mod_timer(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
