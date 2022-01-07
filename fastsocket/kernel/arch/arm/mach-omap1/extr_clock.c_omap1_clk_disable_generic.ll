; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_clock.c_omap1_clk_disable_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_clock.c_omap1_clk_disable_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, i32* }

@ENABLE_REG_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @omap1_clk_disable_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap1_clk_disable_generic(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %5 = load %struct.clk*, %struct.clk** %2, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %51

10:                                               ; preds = %1
  %11 = load %struct.clk*, %struct.clk** %2, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ENABLE_REG_32BIT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %10
  %18 = load %struct.clk*, %struct.clk** %2, align 8
  %19 = getelementptr inbounds %struct.clk, %struct.clk* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @__raw_readl(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.clk*, %struct.clk** %2, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.clk*, %struct.clk** %2, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @__raw_writel(i32 %29, i32* %32)
  br label %51

34:                                               ; preds = %10
  %35 = load %struct.clk*, %struct.clk** %2, align 8
  %36 = getelementptr inbounds %struct.clk, %struct.clk* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @__raw_readw(i32* %37)
  store i32 %38, i32* %3, align 4
  %39 = load %struct.clk*, %struct.clk** %2, align 8
  %40 = getelementptr inbounds %struct.clk, %struct.clk* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.clk*, %struct.clk** %2, align 8
  %48 = getelementptr inbounds %struct.clk, %struct.clk* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @__raw_writew(i32 %46, i32* %49)
  br label %51

51:                                               ; preds = %9, %34, %17
  ret void
}

declare dso_local i32 @__raw_readl(i32*) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

declare dso_local i32 @__raw_readw(i32*) #1

declare dso_local i32 @__raw_writew(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
