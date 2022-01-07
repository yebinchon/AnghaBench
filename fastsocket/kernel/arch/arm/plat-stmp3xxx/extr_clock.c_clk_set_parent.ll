; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.clk*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ENODEV = common dso_local global i32 0, align 4
@clocks_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_parent(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store %struct.clk* %1, %struct.clk** %4, align 8
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.clk*, %struct.clk** %3, align 8
  %10 = call i32 @clk_good(%struct.clk* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.clk*, %struct.clk** %3, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.clk*, %struct.clk*)**
  %23 = load i32 (%struct.clk*, %struct.clk*)*, i32 (%struct.clk*, %struct.clk*)** %22, align 8
  %24 = icmp ne i32 (%struct.clk*, %struct.clk*)* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %69

26:                                               ; preds = %17
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @clocks_lock, i64 %27)
  %29 = load %struct.clk*, %struct.clk** %3, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.clk*, %struct.clk*)**
  %34 = load i32 (%struct.clk*, %struct.clk*)*, i32 (%struct.clk*, %struct.clk*)** %33, align 8
  %35 = load %struct.clk*, %struct.clk** %3, align 8
  %36 = load %struct.clk*, %struct.clk** %4, align 8
  %37 = call i32 %34(%struct.clk* %35, %struct.clk* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %66, label %40

40:                                               ; preds = %26
  %41 = load %struct.clk*, %struct.clk** %4, align 8
  %42 = call i32 @local_clk_disable(%struct.clk* %41)
  %43 = load %struct.clk*, %struct.clk** %3, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.clk*, %struct.clk** %4, align 8
  %47 = getelementptr inbounds %struct.clk, %struct.clk* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.clk*, %struct.clk** %3, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.clk*, %struct.clk** %3, align 8
  %54 = getelementptr inbounds %struct.clk, %struct.clk* %53, i32 0, i32 0
  %55 = load %struct.clk*, %struct.clk** %54, align 8
  %56 = getelementptr inbounds %struct.clk, %struct.clk* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %52
  store i64 %58, i64* %56, align 8
  %59 = load %struct.clk*, %struct.clk** %3, align 8
  %60 = getelementptr inbounds %struct.clk, %struct.clk* %59, i32 0, i32 0
  %61 = load %struct.clk*, %struct.clk** %60, align 8
  %62 = call i32 @local_clk_disable(%struct.clk* %61)
  %63 = load %struct.clk*, %struct.clk** %4, align 8
  %64 = load %struct.clk*, %struct.clk** %3, align 8
  %65 = getelementptr inbounds %struct.clk, %struct.clk* %64, i32 0, i32 0
  store %struct.clk* %63, %struct.clk** %65, align 8
  br label %66

66:                                               ; preds = %40, %26
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* @clocks_lock, i64 %67)
  br label %69

69:                                               ; preds = %66, %25, %16
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clk_good(%struct.clk*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @local_clk_disable(%struct.clk*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
