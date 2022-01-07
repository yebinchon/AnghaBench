; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_atbm8830.c_set_osc_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_atbm8830.c_set_osc_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atbm_state = type { i32 }

@REG_OSC_CLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atbm_state*, i32)* @set_osc_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_osc_freq(%struct.atbm_state* %0, i32 %1) #0 {
  %3 = alloca %struct.atbm_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atbm_state* %0, %struct.atbm_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = mul nsw i32 1048576, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @do_div(i32 %9, i32 30400)
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %13 = load i64, i64* @REG_OSC_CLK, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @atbm8830_write_reg(%struct.atbm_state* %12, i64 %13, i32 %14)
  %16 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %17 = load i64, i64* @REG_OSC_CLK, align 8
  %18 = add nsw i64 %17, 1
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 8
  %21 = call i32 @atbm8830_write_reg(%struct.atbm_state* %16, i64 %18, i32 %20)
  %22 = load %struct.atbm_state*, %struct.atbm_state** %3, align 8
  %23 = load i64, i64* @REG_OSC_CLK, align 8
  %24 = add nsw i64 %23, 2
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 16
  %27 = call i32 @atbm8830_write_reg(%struct.atbm_state* %22, i64 %24, i32 %26)
  ret i32 0
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @atbm8830_write_reg(%struct.atbm_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
