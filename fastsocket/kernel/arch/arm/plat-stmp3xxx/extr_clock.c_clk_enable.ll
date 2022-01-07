; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_clk_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_2__*, i32, %struct.clk* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@clocks_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_enable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = call i32 @clk_good(%struct.clk* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.clk*, %struct.clk** %3, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 2
  %18 = load %struct.clk*, %struct.clk** %17, align 8
  %19 = icmp ne %struct.clk* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.clk*, %struct.clk** %3, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 2
  %23 = load %struct.clk*, %struct.clk** %22, align 8
  %24 = call i32 @clk_enable(%struct.clk* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_lock_irqsave(i32* @clocks_lock, i64 %26)
  %28 = load %struct.clk*, %struct.clk** %3, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.clk*, %struct.clk** %3, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %25
  %37 = load %struct.clk*, %struct.clk** %3, align 8
  %38 = getelementptr inbounds %struct.clk, %struct.clk* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to i32 (%struct.clk*)**
  %42 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %41, align 8
  %43 = icmp ne i32 (%struct.clk*)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.clk*, %struct.clk** %3, align 8
  %46 = getelementptr inbounds %struct.clk, %struct.clk* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i32 (%struct.clk*)**
  %50 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %49, align 8
  %51 = load %struct.clk*, %struct.clk** %3, align 8
  %52 = call i32 %50(%struct.clk* %51)
  br label %53

53:                                               ; preds = %44, %36, %25
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* @clocks_lock, i64 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clk_good(%struct.clk*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
