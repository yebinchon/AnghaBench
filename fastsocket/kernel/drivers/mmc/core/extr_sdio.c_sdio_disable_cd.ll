; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_sdio_disable_cd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_sdio_disable_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SDIO_CCCR_IF = common dso_local global i32 0, align 4
@SDIO_BUS_CD_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @sdio_disable_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_disable_cd(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %6 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %14 = load i32, i32* @SDIO_CCCR_IF, align 4
  %15 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %13, i32 0, i32 0, i32 %14, i32 0, i32* %5)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %12
  %21 = load i32, i32* @SDIO_BUS_CD_DISABLE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %25 = load i32, i32* @SDIO_CCCR_IF, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %24, i32 1, i32 0, i32 %25, i32 %26, i32* null)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %20, %18, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @mmc_io_rw_direct(%struct.mmc_card*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
