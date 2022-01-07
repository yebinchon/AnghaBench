; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.omap_hsmmc_host = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"UNKNOWN state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @omap_hsmmc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_enable(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %6 = call %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host* %5)
  store %struct.omap_hsmmc_host* %6, %struct.omap_hsmmc_host** %4, align 8
  %7 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %8 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %19 [
    i32 130, label %10
    i32 131, label %13
    i32 128, label %13
    i32 129, label %16
  ]

10:                                               ; preds = %1
  %11 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %12 = call i32 @omap_hsmmc_disabled_to_enabled(%struct.omap_hsmmc_host* %11)
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1, %1
  %14 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %15 = call i32 @omap_hsmmc_sleep_to_enabled(%struct.omap_hsmmc_host* %14)
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %18 = call i32 @omap_hsmmc_off_to_enabled(%struct.omap_hsmmc_host* %17)
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %21 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mmc_dev(i32 %22)
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %16, %13, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @omap_hsmmc_disabled_to_enabled(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @omap_hsmmc_sleep_to_enabled(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @omap_hsmmc_off_to_enabled(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
