; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7877.c_ad7877_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ad7877.c_ad7877_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7877 = type { i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@TS_PEN_UP_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ad7877_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7877_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ad7877*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ad7877*
  store %struct.ad7877* %5, %struct.ad7877** %3, align 8
  %6 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %7 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %10 = call i32 @ad7877_rx(%struct.ad7877* %9)
  %11 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %12 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %14 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %13, i32 0, i32 1
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @TS_PEN_UP_TIMEOUT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @mod_timer(i32* %14, i64 %17)
  %19 = load %struct.ad7877*, %struct.ad7877** %3, align 8
  %20 = getelementptr inbounds %struct.ad7877, %struct.ad7877* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock_irq(i32* %20)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ad7877_rx(%struct.ad7877*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
