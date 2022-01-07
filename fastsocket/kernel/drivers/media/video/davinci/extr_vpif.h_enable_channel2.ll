; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif.h_enable_channel2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif.h_enable_channel2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VPIF_CH2_CTRL = common dso_local global i32 0, align 4
@VPIF_CH2_CLK_EN = common dso_local global i32 0, align 4
@VPIF_CH2_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @enable_channel2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_channel2(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load i32, i32* @VPIF_CH2_CTRL, align 4
  %7 = call i32 @regr(i32 %6)
  %8 = load i32, i32* @VPIF_CH2_CLK_EN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @VPIF_CH2_CTRL, align 4
  %11 = call i32 @regw(i32 %9, i32 %10)
  %12 = load i32, i32* @VPIF_CH2_CTRL, align 4
  %13 = call i32 @regr(i32 %12)
  %14 = load i32, i32* @VPIF_CH2_EN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @VPIF_CH2_CTRL, align 4
  %17 = call i32 @regw(i32 %15, i32 %16)
  br label %33

18:                                               ; preds = %1
  %19 = load i32, i32* @VPIF_CH2_CTRL, align 4
  %20 = call i32 @regr(i32 %19)
  %21 = load i32, i32* @VPIF_CH2_CLK_EN, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load i32, i32* @VPIF_CH2_CTRL, align 4
  %25 = call i32 @regw(i32 %23, i32 %24)
  %26 = load i32, i32* @VPIF_CH2_CTRL, align 4
  %27 = call i32 @regr(i32 %26)
  %28 = load i32, i32* @VPIF_CH2_EN, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* @VPIF_CH2_CTRL, align 4
  %32 = call i32 @regw(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %18, %5
  ret void
}

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @regr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
