; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_ccw_device_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_ccw_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccw_device = type { %struct.ccw_driver*, i32, %struct.TYPE_4__*, i32, i64 }
%struct.ccw_driver = type { i32 (%struct.ccw_device.0*)* }
%struct.ccw_device.0 = type opaque
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"ccw_device_offline returned %d, device 0.%x.%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ccw_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccw_device_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.ccw_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.ccw_device* @to_ccwdev(%struct.device* %6)
  store %struct.ccw_device* %7, %struct.ccw_device** %3, align 8
  %8 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 0
  %10 = load %struct.ccw_driver*, %struct.ccw_driver** %9, align 8
  store %struct.ccw_driver* %10, %struct.ccw_driver** %4, align 8
  %11 = load %struct.ccw_driver*, %struct.ccw_driver** %4, align 8
  %12 = getelementptr inbounds %struct.ccw_driver, %struct.ccw_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.ccw_device.0*)*, i32 (%struct.ccw_device.0*)** %12, align 8
  %14 = icmp ne i32 (%struct.ccw_device.0*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.ccw_driver*, %struct.ccw_driver** %4, align 8
  %17 = getelementptr inbounds %struct.ccw_driver, %struct.ccw_driver* %16, i32 0, i32 0
  %18 = load i32 (%struct.ccw_device.0*)*, i32 (%struct.ccw_device.0*)** %17, align 8
  %19 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %20 = bitcast %struct.ccw_device* %19 to %struct.ccw_device.0*
  %21 = call i32 %18(%struct.ccw_device.0* %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %24 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %22
  %28 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %29 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %31 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @spin_lock_irq(i32 %32)
  %34 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %35 = call i32 @ccw_device_offline(%struct.ccw_device* %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %37 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @spin_unlock_irq(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %27
  %43 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %44 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %49 = call i32 @dev_fsm_final_state(%struct.ccw_device* %48)
  %50 = call i32 @wait_event(i32 %47, i32 %49)
  br label %66

51:                                               ; preds = %27
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %54 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %60 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %58, i32 %64)
  br label %66

66:                                               ; preds = %51, %42
  %67 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %68 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %67, i32 0, i32 1
  %69 = call i32 @put_device(i32* %68)
  br label %70

70:                                               ; preds = %66, %22
  %71 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %72 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %71, i32 0)
  %73 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %74 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %73, i32 0, i32 0
  store %struct.ccw_driver* null, %struct.ccw_driver** %74, align 8
  ret i32 0
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @ccw_device_offline(%struct.ccw_device*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @dev_fsm_final_state(%struct.ccw_device*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
