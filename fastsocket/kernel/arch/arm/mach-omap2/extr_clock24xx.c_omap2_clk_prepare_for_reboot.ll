; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock24xx.c_omap2_clk_prepare_for_reboot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock24xx.c_omap2_clk_prepare_for_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vclk = common dso_local global i32* null, align 8
@sclk = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap2_clk_prepare_for_reboot() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @vclk, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32*, i32** @sclk, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  br label %14

8:                                                ; preds = %4
  %9 = load i32*, i32** @sclk, align 8
  %10 = call i32 @clk_get_rate(i32* %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32*, i32** @vclk, align 8
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @clk_set_rate(i32* %11, i32 %12)
  br label %14

14:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @clk_get_rate(i32*) #1

declare dso_local i32 @clk_set_rate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
