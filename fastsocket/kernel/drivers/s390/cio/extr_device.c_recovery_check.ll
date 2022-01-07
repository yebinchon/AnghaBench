; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_recovery_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_recovery_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccw_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"recovery: trigger 0.%x.%04x\0A\00", align 1
@DEV_EVENT_VERIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @recovery_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recovery_check(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.ccw_device* @to_ccwdev(%struct.device* %7)
  store %struct.ccw_device* %8, %struct.ccw_device** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @spin_lock_irq(i32 %13)
  %15 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %40 [
    i32 129, label %20
    i32 128, label %38
  ]

20:                                               ; preds = %2
  %21 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %22 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %28 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CIO_MSG_EVENT(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %32)
  %34 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %35 = load i32, i32* @DEV_EVENT_VERIFY, align 4
  %36 = call i32 @dev_fsm_event(%struct.ccw_device* %34, i32 %35)
  %37 = load i32*, i32** %6, align 8
  store i32 1, i32* %37, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32*, i32** %6, align 8
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %2, %38, %20
  %41 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %42 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @spin_unlock_irq(i32 %43)
  ret i32 0
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_fsm_event(%struct.ccw_device*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
