; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_clock.c___clk_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_clock.c___clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, i32, %struct.clk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @__clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clk_enable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %3 = load %struct.clk*, %struct.clk** %2, align 8
  %4 = icmp ne %struct.clk* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %61

6:                                                ; preds = %1
  %7 = load %struct.clk*, %struct.clk** %2, align 8
  %8 = getelementptr inbounds %struct.clk, %struct.clk* %7, i32 0, i32 3
  %9 = load %struct.clk*, %struct.clk** %8, align 8
  %10 = icmp ne %struct.clk* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.clk*, %struct.clk** %2, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 3
  %14 = load %struct.clk*, %struct.clk** %13, align 8
  call void @__clk_enable(%struct.clk* %14)
  br label %15

15:                                               ; preds = %11, %6
  %16 = load %struct.clk*, %struct.clk** %2, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %15
  %22 = load %struct.clk*, %struct.clk** %2, align 8
  %23 = call i64 @clk_is_pll1(%struct.clk* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.clk*, %struct.clk** %2, align 8
  %27 = getelementptr inbounds %struct.clk, %struct.clk* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @chipcHw_pll1Enable(i32 %28, i32 0)
  br label %60

30:                                               ; preds = %21
  %31 = load %struct.clk*, %struct.clk** %2, align 8
  %32 = call i64 @clk_is_pll2(%struct.clk* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.clk*, %struct.clk** %2, align 8
  %36 = getelementptr inbounds %struct.clk, %struct.clk* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @chipcHw_pll2Enable(i32 %37)
  br label %59

39:                                               ; preds = %30
  %40 = load %struct.clk*, %struct.clk** %2, align 8
  %41 = call i64 @clk_is_using_xtal(%struct.clk* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.clk*, %struct.clk** %2, align 8
  %45 = call i32 @clk_is_primary(%struct.clk* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load %struct.clk*, %struct.clk** %2, align 8
  %49 = getelementptr inbounds %struct.clk, %struct.clk* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @chipcHw_bypassClockEnable(i32 %50)
  br label %52

52:                                               ; preds = %47, %43
  br label %58

53:                                               ; preds = %39
  %54 = load %struct.clk*, %struct.clk** %2, align 8
  %55 = getelementptr inbounds %struct.clk, %struct.clk* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @chipcHw_setClockEnable(i32 %56)
  br label %58

58:                                               ; preds = %53, %52
  br label %59

59:                                               ; preds = %58, %34
  br label %60

60:                                               ; preds = %59, %25
  br label %61

61:                                               ; preds = %5, %60, %15
  ret void
}

declare dso_local i64 @clk_is_pll1(%struct.clk*) #1

declare dso_local i32 @chipcHw_pll1Enable(i32, i32) #1

declare dso_local i64 @clk_is_pll2(%struct.clk*) #1

declare dso_local i32 @chipcHw_pll2Enable(i32) #1

declare dso_local i64 @clk_is_using_xtal(%struct.clk*) #1

declare dso_local i32 @clk_is_primary(%struct.clk*) #1

declare dso_local i32 @chipcHw_bypassClockEnable(i32) #1

declare dso_local i32 @chipcHw_setClockEnable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
