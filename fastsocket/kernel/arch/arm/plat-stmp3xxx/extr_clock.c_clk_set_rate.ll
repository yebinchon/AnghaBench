; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-stmp3xxx/extr_clock.c_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@FIXED_RATE = common dso_local global i32 0, align 4
@RATE_PROPAGATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.clk*, %struct.clk** %3, align 8
  %9 = call i32 @clk_good(%struct.clk* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %69

16:                                               ; preds = %2
  %17 = load %struct.clk*, %struct.clk** %3, align 8
  %18 = getelementptr inbounds %struct.clk, %struct.clk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FIXED_RATE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = load %struct.clk*, %struct.clk** %3, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.clk*, i64)**
  %29 = load i32 (%struct.clk*, i64)*, i32 (%struct.clk*, i64)** %28, align 8
  %30 = icmp ne i32 (%struct.clk*, i64)* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23, %16
  br label %69

32:                                               ; preds = %23
  %33 = load %struct.clk*, %struct.clk** %3, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @close_enough(i64 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %32
  %40 = load %struct.clk*, %struct.clk** %3, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.clk*, i64)**
  %45 = load i32 (%struct.clk*, i64)*, i32 (%struct.clk*, i64)** %44, align 8
  %46 = load %struct.clk*, %struct.clk** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 %45(%struct.clk* %46, i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %69

52:                                               ; preds = %39
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.clk*, %struct.clk** %3, align 8
  %55 = getelementptr inbounds %struct.clk, %struct.clk* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.clk*, %struct.clk** %3, align 8
  %57 = getelementptr inbounds %struct.clk, %struct.clk* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RATE_PROPAGATES, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.clk*, %struct.clk** %3, align 8
  %64 = call i32 @propagate_rate(%struct.clk* %63)
  br label %65

65:                                               ; preds = %62, %52
  br label %67

66:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %65
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %51, %31, %15
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clk_good(%struct.clk*) #1

declare dso_local i32 @close_enough(i64, i64) #1

declare dso_local i32 @propagate_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
