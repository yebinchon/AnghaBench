; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_boxed_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_boxed_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.subchannel = type { i32 }

@DEV_STATE_NOT_OPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccw_device_boxed_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_boxed_verify(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.subchannel* @to_subchannel(i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %5, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %17 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %18 = ptrtoint %struct.subchannel* %17 to i64
  %19 = trunc i64 %18 to i32
  %20 = call i64 @cio_enable_subchannel(%struct.subchannel* %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %24 = load i32, i32* @DEV_STATE_NOT_OPER, align 4
  %25 = call i32 @ccw_device_done(%struct.ccw_device* %23, i32 %24)
  br label %30

26:                                               ; preds = %15
  %27 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ccw_device_online_verify(%struct.ccw_device* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %33 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @css_schedule_eval(i32 %34)
  br label %36

36:                                               ; preds = %31, %30
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i64 @cio_enable_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @ccw_device_done(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_online_verify(%struct.ccw_device*, i32) #1

declare dso_local i32 @css_schedule_eval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
