; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_clock.c_omap1_clk_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_clock.c_omap1_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, %struct.clk*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@CLOCK_NO_IDLE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @omap1_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap1_clk_enable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.clk*, %struct.clk** %3, align 8
  %6 = getelementptr inbounds %struct.clk, %struct.clk* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %59

10:                                               ; preds = %1
  %11 = load %struct.clk*, %struct.clk** %3, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 2
  %13 = load %struct.clk*, %struct.clk** %12, align 8
  %14 = icmp ne %struct.clk* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load %struct.clk*, %struct.clk** %3, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 2
  %18 = load %struct.clk*, %struct.clk** %17, align 8
  %19 = call i32 @omap1_clk_enable(%struct.clk* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %61

23:                                               ; preds = %15
  %24 = load %struct.clk*, %struct.clk** %3, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CLOCK_NO_IDLE_PARENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.clk*, %struct.clk** %3, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 2
  %33 = load %struct.clk*, %struct.clk** %32, align 8
  %34 = call i32 @omap1_clk_deny_idle(%struct.clk* %33)
  br label %35

35:                                               ; preds = %30, %23
  br label %36

36:                                               ; preds = %35, %10
  %37 = load %struct.clk*, %struct.clk** %3, align 8
  %38 = getelementptr inbounds %struct.clk, %struct.clk* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to i32 (%struct.clk*)**
  %42 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %41, align 8
  %43 = load %struct.clk*, %struct.clk** %3, align 8
  %44 = call i32 %42(%struct.clk* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %36
  %48 = load %struct.clk*, %struct.clk** %3, align 8
  %49 = getelementptr inbounds %struct.clk, %struct.clk* %48, i32 0, i32 2
  %50 = load %struct.clk*, %struct.clk** %49, align 8
  %51 = icmp ne %struct.clk* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.clk*, %struct.clk** %3, align 8
  %54 = getelementptr inbounds %struct.clk, %struct.clk* %53, i32 0, i32 2
  %55 = load %struct.clk*, %struct.clk** %54, align 8
  %56 = call i32 @omap1_clk_disable(%struct.clk* %55)
  br label %57

57:                                               ; preds = %52, %47
  br label %61

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58, %1
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %67

61:                                               ; preds = %57, %22
  %62 = load %struct.clk*, %struct.clk** %3, align 8
  %63 = getelementptr inbounds %struct.clk, %struct.clk* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %59
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @omap1_clk_deny_idle(%struct.clk*) #1

declare dso_local i32 @omap1_clk_disable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
