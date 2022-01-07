; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_aiutils.c_ai_clkctl_setdelay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_aiutils.c_ai_clkctl_setdelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_pub = type { i32 }
%struct.bcma_device = type { i32 }

@PLL_DELAY = common dso_local global i64 0, align 8
@SCC_SS_XTAL = common dso_local global i64 0, align 8
@XTAL_ON_DELAY = common dso_local global i64 0, align 8
@FREF_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.si_pub*, %struct.bcma_device*)* @ai_clkctl_setdelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ai_clkctl_setdelay(%struct.si_pub* %0, %struct.bcma_device* %1) #0 {
  %3 = alloca %struct.si_pub*, align 8
  %4 = alloca %struct.bcma_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.si_pub* %0, %struct.si_pub** %3, align 8
  store %struct.bcma_device* %1, %struct.bcma_device** %4, align 8
  %10 = load i64, i64* @PLL_DELAY, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.si_pub*, %struct.si_pub** %3, align 8
  %12 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %13 = call i64 @ai_slowclk_src(%struct.si_pub* %11, %struct.bcma_device* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @SCC_SS_XTAL, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i64, i64* @XTAL_ON_DELAY, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %19, %18
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.si_pub*, %struct.si_pub** %3, align 8
  %23 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %24 = call i64 @ai_slowclk_freq(%struct.si_pub* %22, i32 0, %struct.bcma_device* %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = mul nsw i64 %25, %26
  %28 = add nsw i64 %27, 999999
  %29 = sdiv i64 %28, 1000000
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @FREF_DELAY, align 8
  %32 = mul nsw i64 %30, %31
  %33 = add nsw i64 %32, 999999
  %34 = sdiv i64 %33, 1000000
  store i64 %34, i64* %9, align 8
  %35 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @CHIPCREGOFFS(i64 %36)
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @bcma_write32(%struct.bcma_device* %35, i32 %37, i64 %38)
  %40 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @CHIPCREGOFFS(i64 %41)
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @bcma_write32(%struct.bcma_device* %40, i32 %42, i64 %43)
  ret void
}

declare dso_local i64 @ai_slowclk_src(%struct.si_pub*, %struct.bcma_device*) #1

declare dso_local i64 @ai_slowclk_freq(%struct.si_pub*, i32, %struct.bcma_device*) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i64) #1

declare dso_local i32 @CHIPCREGOFFS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
