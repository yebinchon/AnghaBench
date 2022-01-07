; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_mcbsp.c_omap1_mcbsp_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_mcbsp.c_omap1_mcbsp_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_MCBSP1 = common dso_local global i32 0, align 4
@OMAP_MCBSP3 = common dso_local global i32 0, align 4
@dsp_use = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"api_ck\00", align 1
@api_clk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"dsp_ck\00", align 1
@dsp_clk = common dso_local global i32 0, align 4
@DSP_RSTCT2 = common dso_local global i32 0, align 4
@DPS_RSTCT2_PER_EN = common dso_local global i32 0, align 4
@DSP_RSTCT2_WD_PER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @omap1_mcbsp_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap1_mcbsp_request(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @OMAP_MCBSP1, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @OMAP_MCBSP3, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @dsp_use, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @dsp_use, align 4
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* @api_clk, align 4
  %16 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* @dsp_clk, align 4
  %17 = load i32, i32* @api_clk, align 4
  %18 = call i32 @IS_ERR(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @dsp_clk, align 4
  %22 = call i32 @IS_ERR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @api_clk, align 4
  %26 = call i32 @clk_enable(i32 %25)
  %27 = load i32, i32* @dsp_clk, align 4
  %28 = call i32 @clk_enable(i32 %27)
  %29 = call i32 (...) @omap_dsp_request_mem()
  %30 = load i32, i32* @DSP_RSTCT2, align 4
  %31 = call i32 @__raw_readw(i32 %30)
  %32 = load i32, i32* @DPS_RSTCT2_PER_EN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DSP_RSTCT2_WD_PER_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @DSP_RSTCT2, align 4
  %37 = call i32 @__raw_writew(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %24, %20, %14
  br label %39

39:                                               ; preds = %38, %10
  br label %40

40:                                               ; preds = %39, %6
  ret void
}

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @omap_dsp_request_mem(...) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @__raw_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
