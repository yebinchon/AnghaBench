; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_mmc_sdio_get_max_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_mmc_sdio_get_max_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MMC_TYPE_SD_COMBO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_sdio_get_max_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sdio_get_max_clock(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %4 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %5 = call i64 @mmc_card_highspeed(%struct.mmc_card* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 50000000, i32* %3, align 4
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %10 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %8, %7
  %14 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %15 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MMC_TYPE_SD_COMBO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %22 = call i32 @mmc_sd_get_max_clock(%struct.mmc_card* %21)
  %23 = call i32 @min(i32 %20, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @mmc_card_highspeed(%struct.mmc_card*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mmc_sd_get_max_clock(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
