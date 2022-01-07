; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_corgi_lcd.c_lcdtg_set_phadadj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_corgi_lcd.c_lcdtg_set_phadadj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sharpsl_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PHACTRL_PHASE_MANUAL = common dso_local global i32 0, align 4
@DEFAULT_PHAD_QVGA = common dso_local global i32 0, align 4
@PHACTRL_ADRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @lcdtg_set_phadadj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcdtg_set_phadadj(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %19 [
    i32 480, label %5
    i32 640, label %5
    i32 240, label %18
    i32 320, label %18
  ]

5:                                                ; preds = %1, %1
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sharpsl_param, i32 0, i32 0), align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load i32, i32* @PHACTRL_PHASE_MANUAL, align 4
  store i32 %10, i32* %3, align 4
  br label %17

11:                                               ; preds = %5
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 15
  %14 = shl i32 %13, 1
  %15 = load i32, i32* @PHACTRL_PHASE_MANUAL, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %11, %9
  br label %24

18:                                               ; preds = %1, %1
  br label %19

19:                                               ; preds = %1, %18
  %20 = load i32, i32* @DEFAULT_PHAD_QVGA, align 4
  %21 = shl i32 %20, 1
  %22 = load i32, i32* @PHACTRL_PHASE_MANUAL, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %17
  %25 = load i32, i32* @PHACTRL_ADRS, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @corgi_ssp_lcdtg_send(i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @corgi_ssp_lcdtg_send(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
