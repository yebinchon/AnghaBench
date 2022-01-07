; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7877.c_ad7877_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7877.c_ad7877_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7877 = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad7877*)* @ad7877_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7877_disable(%struct.ad7877* %0) #0 {
  %2 = alloca %struct.ad7877*, align 8
  store %struct.ad7877* %0, %struct.ad7877** %2, align 8
  %3 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %4 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %7 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %1
  %11 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %12 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %14 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @disable_irq(i32 %17)
  br label %19

19:                                               ; preds = %24, %10
  %20 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %21 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @msleep(i32 1)
  br label %19

26:                                               ; preds = %19
  %27 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %28 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %27, i32 0, i32 2
  %29 = call i64 @del_timer_sync(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %33 = call i32 @ad7877_ts_event_release(%struct.ad7877* %32)
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.ad7877*, %struct.ad7877** %2, align 8
  %37 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @del_timer_sync(i32*) #1

declare dso_local i32 @ad7877_ts_event_release(%struct.ad7877*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
