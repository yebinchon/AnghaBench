; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_trigger_reprobe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_trigger_reprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_9__*, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.subchannel = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@DEV_STATE_DISCONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_trigger_reprobe(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DEV_STATE_DISCONNECTED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %61

12:                                               ; preds = %1
  %13 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.subchannel* @to_subchannel(i32 %16)
  store %struct.subchannel* %17, %struct.subchannel** %3, align 8
  %18 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %19 = call i64 @cio_update_schib(%struct.subchannel* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %61

22:                                               ; preds = %12
  %23 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %24 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %29 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %33 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %35 = call i32 @io_subchannel_init_config(%struct.subchannel* %34)
  %36 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %37 = call i64 @cio_commit_config(%struct.subchannel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  br label %61

40:                                               ; preds = %22
  %41 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %42 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %47 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %45, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %55 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @css_schedule_eval(i32 %56)
  br label %61

58:                                               ; preds = %40
  %59 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %60 = call i32 @ccw_device_start_id(%struct.ccw_device* %59, i32 0)
  br label %61

61:                                               ; preds = %11, %21, %39, %58, %53
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @io_subchannel_init_config(%struct.subchannel*) #1

declare dso_local i64 @cio_commit_config(%struct.subchannel*) #1

declare dso_local i32 @css_schedule_eval(i32) #1

declare dso_local i32 @ccw_device_start_id(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
