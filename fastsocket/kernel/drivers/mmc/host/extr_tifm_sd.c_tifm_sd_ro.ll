; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_ro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.tifm_sd = type { %struct.tifm_dev* }
%struct.tifm_dev = type { i32, i64 }

@TIFM_MMCSD_CARD_RO = common dso_local global i32 0, align 4
@SOCK_PRESENT_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @tifm_sd_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tifm_sd_ro(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tifm_sd*, align 8
  %5 = alloca %struct.tifm_dev*, align 8
  %6 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %8 = call %struct.tifm_sd* @mmc_priv(%struct.mmc_host* %7)
  store %struct.tifm_sd* %8, %struct.tifm_sd** %4, align 8
  %9 = load %struct.tifm_sd*, %struct.tifm_sd** %4, align 8
  %10 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %9, i32 0, i32 0
  %11 = load %struct.tifm_dev*, %struct.tifm_dev** %10, align 8
  store %struct.tifm_dev* %11, %struct.tifm_dev** %5, align 8
  %12 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %13 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* @TIFM_MMCSD_CARD_RO, align 4
  %17 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %18 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOCK_PRESENT_STATE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  %23 = and i32 %16, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %28 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.tifm_sd* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
