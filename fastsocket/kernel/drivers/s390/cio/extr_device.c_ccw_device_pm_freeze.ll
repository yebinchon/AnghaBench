; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_ccw_device_pm_freeze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_ccw_device_pm_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ccw_device = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 (%struct.ccw_device*)* }
%struct.TYPE_4__ = type { i32 }
%struct.subchannel = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ccw_device_pm_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccw_device_pm_freeze(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ccw_device* @to_ccwdev(%struct.device* %8)
  store %struct.ccw_device* %9, %struct.ccw_device** %4, align 8
  %10 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.subchannel* @to_subchannel(i32 %13)
  store %struct.subchannel* %14, %struct.subchannel** %5, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %16 = call i32 @dev_fsm_final_state(%struct.ccw_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %90

21:                                               ; preds = %1
  %22 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %23 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %90

27:                                               ; preds = %21
  %28 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %29 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %34 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %36, align 8
  %38 = icmp ne i32 (%struct.ccw_device*)* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %41 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ccw_device*)*, i32 (%struct.ccw_device*)** %43, align 8
  %45 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %46 = call i32 %44(%struct.ccw_device* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %90

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %32, %27
  %53 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %54 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @spin_lock_irq(i32 %55)
  %57 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %58 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %65 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @spin_unlock_irq(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %52
  %71 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %72 = call i32 @ccw_set_cmf(%struct.ccw_device* %71, i32 0)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %90

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %52
  %79 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %80 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @spin_lock_irq(i32 %81)
  %83 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %84 = call i32 @cio_disable_subchannel(%struct.subchannel* %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %86 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @spin_unlock_irq(i32 %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %78, %75, %49, %26, %18
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @dev_fsm_final_state(%struct.ccw_device*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @ccw_set_cmf(%struct.ccw_device*, i32) #1

declare dso_local i32 @cio_disable_subchannel(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
