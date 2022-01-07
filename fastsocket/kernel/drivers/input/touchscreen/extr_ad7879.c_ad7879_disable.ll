; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7879.c_ad7879_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7879.c_ad7879_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7879 = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AD7879_REG_CTRL2 = common dso_local global i32 0, align 4
@AD7879_PM_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad7879*)* @ad7879_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7879_disable(%struct.ad7879* %0) #0 {
  %2 = alloca %struct.ad7879*, align 8
  store %struct.ad7879* %0, %struct.ad7879** %2, align 8
  %3 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %4 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %7 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %1
  %11 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %12 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %14 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @disable_irq(i32 %17)
  %19 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %20 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %19, i32 0, i32 4
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %23 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %22, i32 0, i32 3
  %24 = call i64 @del_timer_sync(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %10
  %27 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %28 = call i32 @ad7879_ts_event_release(%struct.ad7879* %27)
  br label %29

29:                                               ; preds = %26, %10
  %30 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %31 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* @AD7879_REG_CTRL2, align 4
  %34 = load i32, i32* @AD7879_PM_SHUTDOWN, align 4
  %35 = call i32 @AD7879_PM(i32 %34)
  %36 = call i32 @ad7879_write(%struct.TYPE_2__* %32, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %29, %1
  %38 = load %struct.ad7879*, %struct.ad7879** %2, align 8
  %39 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i64 @del_timer_sync(i32*) #1

declare dso_local i32 @ad7879_ts_event_release(%struct.ad7879*) #1

declare dso_local i32 @ad7879_write(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @AD7879_PM(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
