; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_power_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64 }

@MMC_BUSMODE_OPENDRAIN = common dso_local global i32 0, align 4
@MMC_CS_DONTCARE = common dso_local global i32 0, align 4
@MMC_POWER_OFF = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@MMC_TIMING_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @mmc_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_power_off(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %3 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 6
  store i64 0, i64* %5, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %10 = call i32 @mmc_host_is_spi(%struct.mmc_host* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @MMC_BUSMODE_OPENDRAIN, align 4
  %14 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %15 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @MMC_CS_DONTCARE, align 4
  %18 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %19 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %12, %1
  %22 = load i32, i32* @MMC_POWER_OFF, align 4
  %23 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @MMC_BUS_WIDTH_1, align 4
  %27 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %28 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @MMC_TIMING_LEGACY, align 4
  %31 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %35 = call i32 @mmc_set_ios(%struct.mmc_host* %34)
  ret void
}

declare dso_local i32 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_set_ios(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
