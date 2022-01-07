; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clk_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i64, %struct.clk* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_clk_enable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %1
  %11 = load %struct.clk*, %struct.clk** %3, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.clk*, %struct.clk** %3, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.clk*, %struct.clk** %3, align 8
  %20 = call i32 @omap2_clkdm_clk_enable(i64 %18, %struct.clk* %19)
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.clk*, %struct.clk** %3, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 2
  %24 = load %struct.clk*, %struct.clk** %23, align 8
  %25 = icmp ne %struct.clk* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.clk*, %struct.clk** %3, align 8
  %28 = getelementptr inbounds %struct.clk, %struct.clk* %27, i32 0, i32 2
  %29 = load %struct.clk*, %struct.clk** %28, align 8
  %30 = call i32 @omap2_clk_enable(%struct.clk* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %54

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.clk*, %struct.clk** %3, align 8
  %37 = call i32 @_omap2_clk_enable(%struct.clk* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.clk*, %struct.clk** %3, align 8
  %42 = getelementptr inbounds %struct.clk, %struct.clk* %41, i32 0, i32 2
  %43 = load %struct.clk*, %struct.clk** %42, align 8
  %44 = icmp ne %struct.clk* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.clk*, %struct.clk** %3, align 8
  %47 = getelementptr inbounds %struct.clk, %struct.clk* %46, i32 0, i32 2
  %48 = load %struct.clk*, %struct.clk** %47, align 8
  %49 = call i32 @omap2_clk_disable(%struct.clk* %48)
  br label %50

50:                                               ; preds = %45, %40
  br label %54

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %71

54:                                               ; preds = %50, %33
  %55 = load %struct.clk*, %struct.clk** %3, align 8
  %56 = getelementptr inbounds %struct.clk, %struct.clk* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.clk*, %struct.clk** %3, align 8
  %61 = getelementptr inbounds %struct.clk, %struct.clk* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.clk*, %struct.clk** %3, align 8
  %64 = call i32 @omap2_clkdm_clk_disable(i64 %62, %struct.clk* %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.clk*, %struct.clk** %3, align 8
  %67 = getelementptr inbounds %struct.clk, %struct.clk* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %65, %52
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @omap2_clkdm_clk_enable(i64, %struct.clk*) #1

declare dso_local i32 @_omap2_clk_enable(%struct.clk*) #1

declare dso_local i32 @omap2_clk_disable(%struct.clk*) #1

declare dso_local i32 @omap2_clkdm_clk_disable(i64, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
