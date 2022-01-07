; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_extif.c_ssb_extif_timing_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_extif.c_ssb_extif_timing_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_extif = type { i32 }

@SSB_EXTIF_PROG_CFG = common dso_local global i32 0, align 4
@SSB_EXTCFG_EN = common dso_local global i32 0, align 4
@SSB_PROG_WCNT_3_SHIFT = common dso_local global i32 0, align 4
@SSB_PROG_WCNT_1_SHIFT = common dso_local global i32 0, align 4
@SSB_EXTIF_PROG_WAITCNT = common dso_local global i32 0, align 4
@SSB_PROG_WCNT_2_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_extif_timing_init(%struct.ssb_extif* %0, i64 %1) #0 {
  %3 = alloca %struct.ssb_extif*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ssb_extif* %0, %struct.ssb_extif** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ssb_extif*, %struct.ssb_extif** %3, align 8
  %7 = load i32, i32* @SSB_EXTIF_PROG_CFG, align 4
  %8 = load i32, i32* @SSB_EXTCFG_EN, align 4
  %9 = call i32 @extif_write32(%struct.ssb_extif* %6, i32 %7, i32 %8)
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @DIV_ROUND_UP(i32 10, i64 %10)
  %12 = load i32, i32* @SSB_PROG_WCNT_3_SHIFT, align 4
  %13 = shl i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @DIV_ROUND_UP(i32 40, i64 %14)
  %16 = load i32, i32* @SSB_PROG_WCNT_1_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @DIV_ROUND_UP(i32 120, i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ssb_extif*, %struct.ssb_extif** %3, align 8
  %25 = load i32, i32* @SSB_EXTIF_PROG_WAITCNT, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @extif_write32(%struct.ssb_extif* %24, i32 %25, i32 %26)
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @DIV_ROUND_UP(i32 10, i64 %28)
  %30 = load i32, i32* @SSB_PROG_WCNT_3_SHIFT, align 4
  %31 = shl i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @DIV_ROUND_UP(i32 20, i64 %32)
  %34 = load i32, i32* @SSB_PROG_WCNT_2_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @DIV_ROUND_UP(i32 100, i64 %38)
  %40 = load i32, i32* @SSB_PROG_WCNT_1_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @DIV_ROUND_UP(i32 120, i64 %44)
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ssb_extif*, %struct.ssb_extif** %3, align 8
  %49 = load i32, i32* @SSB_EXTIF_PROG_WAITCNT, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @extif_write32(%struct.ssb_extif* %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @extif_write32(%struct.ssb_extif*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
