; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_interface.c_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_interface.c_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_alarm_irq_enable(%struct.rtc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %8 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock_interruptible(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %16 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %45

22:                                               ; preds = %14
  %23 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = icmp ne i32 (i32, i32)* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %44

32:                                               ; preds = %22
  %33 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %39 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 %37(i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %32, %29
  br label %45

45:                                               ; preds = %44, %19
  %46 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %47 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
