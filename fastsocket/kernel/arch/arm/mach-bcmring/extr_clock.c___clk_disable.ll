; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_clock.c___clk_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_clock.c___clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.clk*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @__clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clk_disable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %3 = load %struct.clk*, %struct.clk** %2, align 8
  %4 = icmp ne %struct.clk* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %61

6:                                                ; preds = %1
  %7 = load %struct.clk*, %struct.clk** %2, align 8
  %8 = getelementptr inbounds %struct.clk, %struct.clk* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.clk*, %struct.clk** %2, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %6
  %19 = load %struct.clk*, %struct.clk** %2, align 8
  %20 = call i64 @clk_is_pll1(%struct.clk* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (...) @chipcHw_pll1Disable()
  br label %51

24:                                               ; preds = %18
  %25 = load %struct.clk*, %struct.clk** %2, align 8
  %26 = call i64 @clk_is_pll2(%struct.clk* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (...) @chipcHw_pll2Disable()
  br label %50

30:                                               ; preds = %24
  %31 = load %struct.clk*, %struct.clk** %2, align 8
  %32 = call i64 @clk_is_using_xtal(%struct.clk* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.clk*, %struct.clk** %2, align 8
  %36 = call i32 @clk_is_primary(%struct.clk* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load %struct.clk*, %struct.clk** %2, align 8
  %40 = getelementptr inbounds %struct.clk, %struct.clk* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @chipcHw_bypassClockDisable(i32 %41)
  br label %43

43:                                               ; preds = %38, %34
  br label %49

44:                                               ; preds = %30
  %45 = load %struct.clk*, %struct.clk** %2, align 8
  %46 = getelementptr inbounds %struct.clk, %struct.clk* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @chipcHw_setClockDisable(i32 %47)
  br label %49

49:                                               ; preds = %44, %43
  br label %50

50:                                               ; preds = %49, %28
  br label %51

51:                                               ; preds = %50, %22
  br label %52

52:                                               ; preds = %51, %6
  %53 = load %struct.clk*, %struct.clk** %2, align 8
  %54 = getelementptr inbounds %struct.clk, %struct.clk* %53, i32 0, i32 1
  %55 = load %struct.clk*, %struct.clk** %54, align 8
  %56 = icmp ne %struct.clk* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.clk*, %struct.clk** %2, align 8
  %59 = getelementptr inbounds %struct.clk, %struct.clk* %58, i32 0, i32 1
  %60 = load %struct.clk*, %struct.clk** %59, align 8
  call void @__clk_disable(%struct.clk* %60)
  br label %61

61:                                               ; preds = %5, %57, %52
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @clk_is_pll1(%struct.clk*) #1

declare dso_local i32 @chipcHw_pll1Disable(...) #1

declare dso_local i64 @clk_is_pll2(%struct.clk*) #1

declare dso_local i32 @chipcHw_pll2Disable(...) #1

declare dso_local i64 @clk_is_using_xtal(%struct.clk*) #1

declare dso_local i32 @clk_is_primary(%struct.clk*) #1

declare dso_local i32 @chipcHw_bypassClockDisable(i32) #1

declare dso_local i32 @chipcHw_setClockDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
