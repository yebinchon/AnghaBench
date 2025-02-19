; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_clock.c_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_clock.c_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64 (%struct.clk*, i64, i32)* }

@ENOSYS = common dso_local global i32 0, align 4
@clk_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk*, %struct.clk** %4, align 8
  %9 = getelementptr inbounds %struct.clk, %struct.clk* %8, i32 0, i32 0
  %10 = load i64 (%struct.clk*, i64, i32)*, i64 (%struct.clk*, i64, i32)** %9, align 8
  %11 = icmp ne i64 (%struct.clk*, i64, i32)* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOSYS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @clk_lock, i64 %16)
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 0
  %20 = load i64 (%struct.clk*, i64, i32)*, i64 (%struct.clk*, i64, i32)** %19, align 8
  %21 = load %struct.clk*, %struct.clk** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 %20(%struct.clk* %21, i64 %22, i32 1)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* @clk_lock, i64 %24)
  %26 = load i64, i64* %7, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i64, i64* %7, align 8
  br label %31

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i64 [ %29, %28 ], [ 0, %30 ]
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
