; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_interface.c_rtc_irq_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_interface.c_rtc_irq_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32, %struct.rtc_task* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.rtc_task = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_irq_set_state(%struct.rtc_device* %0, %struct.rtc_task* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtc_device*, align 8
  %6 = alloca %struct.rtc_task*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.rtc_device* %0, %struct.rtc_device** %5, align 8
  store %struct.rtc_task* %1, %struct.rtc_task** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %11 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = icmp eq i32 (i32, i32)* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %64

19:                                               ; preds = %3
  %20 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %20, i32 0, i32 2
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %24, i32 0, i32 3
  %26 = load %struct.rtc_task*, %struct.rtc_task** %25, align 8
  %27 = icmp ne %struct.rtc_task* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.rtc_task*, %struct.rtc_task** %6, align 8
  %30 = icmp eq %struct.rtc_task* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %28, %19
  %35 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %35, i32 0, i32 3
  %37 = load %struct.rtc_task*, %struct.rtc_task** %36, align 8
  %38 = load %struct.rtc_task*, %struct.rtc_task** %6, align 8
  %39 = icmp ne %struct.rtc_task* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EACCES, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %44, i32 0, i32 2
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (i32, i32)*, i32 (i32, i32)** %54, align 8
  %56 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 %55(i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %50, %43
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
