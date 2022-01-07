; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_set_data_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_set_data_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@SDIO = common dso_local global i32 0, align 4
@DTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_request*)* @set_data_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_data_timeout(%struct.mmc_omap_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %8 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 1000000000, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = udiv i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %31 = load i32, i32* @SDIO, align 4
  %32 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ugt i32 %33, 65535
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, 32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = udiv i32 %38, 1024
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, -33
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %45 = load i32, i32* @SDIO, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %44, i32 %45, i32 %46)
  %48 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %49 = load i32, i32* @DTO, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @OMAP_MMC_READ(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
