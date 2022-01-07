; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_clock.c_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_clock.c_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@clk_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clk_round_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk*, %struct.clk** %4, align 8
  %10 = icmp ne %struct.clk* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @EINVAL, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %3, align 8
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.clk*, %struct.clk** %4, align 8
  %16 = call i32 @clk_is_programmable(%struct.clk* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %3, align 8
  br label %43

21:                                               ; preds = %14
  %22 = load %struct.clk*, %struct.clk** %4, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* @EBUSY, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %3, align 8
  br label %43

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_lock_irqsave(i32* @clk_lock, i64 %30)
  %32 = load %struct.clk*, %struct.clk** %4, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @min(i64 %37, i64 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @clk_lock, i64 %40)
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %29, %26, %18, %11
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i32 @clk_is_programmable(%struct.clk*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
