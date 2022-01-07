; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_prepare_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_prepare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.mmc_request = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BLK = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"MMC start dma failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*, %struct.mmc_request*)* @omap_hsmmc_prepare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_prepare_data(%struct.omap_hsmmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  %7 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %8 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %10, i32 0, i32 3
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %11, align 8
  %12 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %13 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %18 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BLK, align 4
  %21 = call i32 @OMAP_HSMMC_WRITE(i32 %19, i32 %20, i32 0)
  %22 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %23 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MMC_RSP_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %32 = call i32 @set_data_timeout(%struct.omap_hsmmc_host* %31, i32 100000000, i32 0)
  br label %33

33:                                               ; preds = %30, %16
  store i32 0, i32* %3, align 4
  br label %83

34:                                               ; preds = %2
  %35 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %36 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BLK, align 4
  %39 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %40 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %45 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %43, %49
  %51 = call i32 @OMAP_HSMMC_WRITE(i32 %37, i32 %38, i32 %50)
  %52 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %53 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %54 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %59 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @set_data_timeout(%struct.omap_hsmmc_host* %52, i32 %57, i32 %62)
  %64 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %65 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %34
  %69 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %70 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %71 = call i32 @omap_hsmmc_start_dma_transfer(%struct.omap_hsmmc_host* %69, %struct.mmc_request* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %76 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mmc_dev(i32 %77)
  %79 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %83

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %34
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %74, %33
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @set_data_timeout(%struct.omap_hsmmc_host*, i32, i32) #1

declare dso_local i32 @omap_hsmmc_start_dma_transfer(%struct.omap_hsmmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
