; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_interface.c_rtc_update_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_interface.c_rtc_update_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32)* }

@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_update_irq(%struct.rtc_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %9 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %8, i32 0, i32 5
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %13 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = shl i64 %15, 8
  %17 = add i64 %14, %16
  %18 = load i64, i64* %6, align 8
  %19 = or i64 %17, %18
  %20 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %23 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %22, i32 0, i32 5
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %26, i32 0, i32 3
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %3
  %35 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %39(i32 %44)
  br label %46

46:                                               ; preds = %34, %3
  %47 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %48 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %47, i32 0, i32 3
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %51, i32 0, i32 2
  %53 = call i32 @wake_up_interruptible(i32* %52)
  %54 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %55 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %54, i32 0, i32 1
  %56 = load i32, i32* @SIGIO, align 4
  %57 = load i32, i32* @POLL_IN, align 4
  %58 = call i32 @kill_fasync(i32* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
