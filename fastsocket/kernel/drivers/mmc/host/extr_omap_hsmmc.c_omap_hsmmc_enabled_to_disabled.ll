; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_enabled_to_disabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_enabled_to_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i64, i32, i32, i32 }

@DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ENABLED -> DISABLED\0A\00", align 1
@MMC_POWER_OFF = common dso_local global i64 0, align 8
@OMAP_MMC_SLEEP_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*)* @omap_hsmmc_enabled_to_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_enabled_to_disabled(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  %4 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %5 = call i32 @omap_hsmmc_context_save(%struct.omap_hsmmc_host* %4)
  %6 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @clk_disable(i32 %8)
  %10 = load i32, i32* @DISABLED, align 4
  %11 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mmc_dev(i32 %15)
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MMC_POWER_OFF, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @OMAP_MMC_SLEEP_TIMEOUT, align 4
  %26 = call i32 @msecs_to_jiffies(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %23
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @omap_hsmmc_context_save(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
