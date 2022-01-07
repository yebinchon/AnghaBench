; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_chip_set_basic_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_chip_set_basic_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }

@CR_RATES_80211B = common dso_local global i32 0, align 4
@CR_RATES_80211G = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CR_BASIC_RATE_TBL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_chip_set_basic_rates(%struct.zd_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @CR_RATES_80211B, align 4
  %9 = load i32, i32* @CR_RATES_80211G, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %19 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @CR_BASIC_RATE_TBL, align 4
  %24 = call i32 @zd_iowrite32_locked(%struct.zd_chip* %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %26 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %17, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @zd_iowrite32_locked(%struct.zd_chip*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
