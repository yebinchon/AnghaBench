; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_dflt_clk_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock.c_omap2_dflt_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"clock.c: Enable for %s without enable code\0A\00", align 1
@INVERT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_dflt_clk_enable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.clk*, %struct.clk** %3, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %2, align 4
  br label %63

17:                                               ; preds = %1
  %18 = load %struct.clk*, %struct.clk** %3, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @__raw_readl(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.clk*, %struct.clk** %3, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @INVERT_ENABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load %struct.clk*, %struct.clk** %3, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %43

36:                                               ; preds = %17
  %37 = load %struct.clk*, %struct.clk** %3, align 8
  %38 = getelementptr inbounds %struct.clk, %struct.clk* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %36, %28
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.clk*, %struct.clk** %3, align 8
  %46 = getelementptr inbounds %struct.clk, %struct.clk* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @__raw_writel(i32 %44, i32* %47)
  %49 = load %struct.clk*, %struct.clk** %3, align 8
  %50 = getelementptr inbounds %struct.clk, %struct.clk* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @__raw_readl(i32* %51)
  store i32 %52, i32* %4, align 4
  %53 = load %struct.clk*, %struct.clk** %3, align 8
  %54 = getelementptr inbounds %struct.clk, %struct.clk* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load %struct.clk*, %struct.clk** %3, align 8
  %61 = call i32 @omap2_module_wait_ready(%struct.clk* %60)
  br label %62

62:                                               ; preds = %59, %43
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @__raw_readl(i32*) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

declare dso_local i32 @omap2_module_wait_ready(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
