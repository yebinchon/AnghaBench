; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_bfin_gpio.c_set_gpio_toggle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_bfin_gpio.c_set_gpio_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ANOMALY_05000311 = common dso_local global i64 0, align 8
@ANOMALY_05000323 = common dso_local global i64 0, align 8
@gpio_array = common dso_local global %struct.TYPE_2__** null, align 8
@toggle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_gpio_toggle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @ANOMALY_05000311, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* @ANOMALY_05000323, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @local_irq_save_hw(i64 %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @gpio_bit(i32 %13)
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @gpio_array, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @gpio_bank(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %14, i32* %20, align 4
  %21 = load i64, i64* @ANOMALY_05000311, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = load i64, i64* @ANOMALY_05000323, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %12
  %27 = load i32, i32* @toggle, align 4
  %28 = call i32 @AWA_DUMMY_READ(i32 %27)
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @local_irq_restore_hw(i64 %29)
  br label %31

31:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @local_irq_save_hw(i64) #1

declare dso_local i32 @gpio_bit(i32) #1

declare dso_local i64 @gpio_bank(i32) #1

declare dso_local i32 @AWA_DUMMY_READ(i32) #1

declare dso_local i32 @local_irq_restore_hw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
