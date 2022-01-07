; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock.c_clk_set_rate_ex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock.c_clk_set_rate_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i64 (%struct.clk*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@clock_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_rate_ex(%struct.clk* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @clock_lock, i64 %11)
  %13 = load %struct.clk*, %struct.clk** %4, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.clk*, i64, i32)**
  %23 = load i32 (%struct.clk*, i64, i32)*, i32 (%struct.clk*, i64, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.clk*, i64, i32)* %23, null
  br label %25

25:                                               ; preds = %17, %3
  %26 = phi i1 [ false, %3 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.clk*, %struct.clk** %4, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.clk*, i64, i32)**
  %36 = load i32 (%struct.clk*, i64, i32)*, i32 (%struct.clk*, i64, i32)** %35, align 8
  %37 = load %struct.clk*, %struct.clk** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 %36(%struct.clk* %37, i64 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %74

44:                                               ; preds = %30
  br label %49

45:                                               ; preds = %25
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.clk*, %struct.clk** %4, align 8
  %48 = getelementptr inbounds %struct.clk, %struct.clk* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %44
  %50 = load %struct.clk*, %struct.clk** %4, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.clk*, %struct.clk** %4, align 8
  %56 = getelementptr inbounds %struct.clk, %struct.clk* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64 (%struct.clk*)*, i64 (%struct.clk*)** %58, align 8
  %60 = icmp ne i64 (%struct.clk*)* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.clk*, %struct.clk** %4, align 8
  %63 = getelementptr inbounds %struct.clk, %struct.clk* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64 (%struct.clk*)*, i64 (%struct.clk*)** %65, align 8
  %67 = load %struct.clk*, %struct.clk** %4, align 8
  %68 = call i64 %66(%struct.clk* %67)
  %69 = load %struct.clk*, %struct.clk** %4, align 8
  %70 = getelementptr inbounds %struct.clk, %struct.clk* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %61, %54, %49
  %72 = load %struct.clk*, %struct.clk** %4, align 8
  %73 = call i32 @propagate_rate(%struct.clk* %72)
  br label %74

74:                                               ; preds = %71, %43
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* @clock_lock, i64 %75)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @propagate_rate(%struct.clk*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
