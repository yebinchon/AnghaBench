; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_set_data_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_set_data_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_sd = type { i64, i64, %struct.tifm_dev* }
%struct.tifm_dev = type { i64 }
%struct.mmc_data = type { i32, i64 }

@fixed_timeout = common dso_local global i64 0, align 8
@SOCK_MMCSD_DATA_TO = common dso_local global i64 0, align 8
@TIFM_MMCSD_DPE = common dso_local global i32 0, align 4
@SOCK_MMCSD_SDIO_MODE_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tifm_sd*, %struct.mmc_data*)* @tifm_sd_set_data_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_sd_set_data_timeout(%struct.tifm_sd* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.tifm_sd*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.tifm_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.tifm_sd* %0, %struct.tifm_sd** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %7 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %8 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %7, i32 0, i32 2
  %9 = load %struct.tifm_dev*, %struct.tifm_dev** %8, align 8
  store %struct.tifm_dev* %9, %struct.tifm_dev** %5, align 8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* @fixed_timeout, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %87

16:                                               ; preds = %2
  %17 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %21 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = udiv i64 1000000000, %22
  %24 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %25 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %23, %26
  %28 = udiv i64 %19, %27
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = add i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ult i32 %33, 65535
  br i1 %34, label %35, label %58

35:                                               ; preds = %16
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %38 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SOCK_MMCSD_DATA_TO, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load i32, i32* @TIFM_MMCSD_DPE, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %46 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SOCK_MMCSD_SDIO_MODE_CONFIG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  %51 = and i32 %44, %50
  %52 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %53 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SOCK_MMCSD_SDIO_MODE_CONFIG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  br label %87

58:                                               ; preds = %16
  %59 = load i32, i32* %6, align 4
  %60 = lshr i32 %59, 10
  %61 = add i32 %60, 1
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ugt i32 %62, 65535
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %58
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %68 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SOCK_MMCSD_DATA_TO, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load i32, i32* @TIFM_MMCSD_DPE, align 4
  %74 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %75 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SOCK_MMCSD_SDIO_MODE_CONFIG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @readl(i64 %78)
  %80 = or i32 %73, %79
  %81 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %82 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SOCK_MMCSD_SDIO_MODE_CONFIG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  br label %87

87:                                               ; preds = %15, %65, %35
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
