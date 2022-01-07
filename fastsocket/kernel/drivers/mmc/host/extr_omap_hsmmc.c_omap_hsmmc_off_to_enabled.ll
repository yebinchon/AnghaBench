; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_off_to_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_off_to_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i32 }

@ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"OFF -> ENABLED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*)* @omap_hsmmc_off_to_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_off_to_enabled(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca %struct.omap_hsmmc_host*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %2, align 8
  %3 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %4 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @clk_enable(i32 %5)
  %7 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %8 = call i32 @omap_hsmmc_context_restore(%struct.omap_hsmmc_host* %7)
  %9 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %10 = call i32 @omap_hsmmc_conf_bus_power(%struct.omap_hsmmc_host* %9)
  %11 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mmc_power_restore_host(i32 %13)
  %15 = load i32, i32* @ENABLED, align 4
  %16 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %19 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mmc_dev(i32 %20)
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @omap_hsmmc_context_restore(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @omap_hsmmc_conf_bus_power(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @mmc_power_restore_host(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
