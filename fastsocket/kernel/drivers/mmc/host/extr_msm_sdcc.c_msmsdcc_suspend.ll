; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.msmsdcc_host = type { i64, i32, i32, i64, i64 }

@MMC_TYPE_SDIO = common dso_local global i64 0, align 8
@MMCIMASK0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @msmsdcc_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msmsdcc_suspend(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msmsdcc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.mmc_host* @mmc_get_drvdata(%struct.platform_device* %8)
  store %struct.mmc_host* %9, %struct.mmc_host** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %11 = icmp ne %struct.mmc_host* %10, null
  br i1 %11, label %12, label %68

12:                                               ; preds = %2
  %13 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %14 = call %struct.msmsdcc_host* @mmc_priv(%struct.mmc_host* %13)
  store %struct.msmsdcc_host* %14, %struct.msmsdcc_host** %7, align 8
  %15 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %7, align 8
  %16 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %7, align 8
  %21 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @disable_irq(i64 %22)
  br label %24

24:                                               ; preds = %19, %12
  %25 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %31 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MMC_TYPE_SDIO, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @mmc_suspend_host(%struct.mmc_host* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %29, %24
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %41
  %45 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %7, align 8
  %46 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MMCIMASK0, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 0, i64 %49)
  %51 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %7, align 8
  %52 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %7, align 8
  %57 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clk_disable(i32 %58)
  %60 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %7, align 8
  %61 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @clk_disable(i32 %62)
  %64 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %7, align 8
  %65 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %55, %44
  br label %67

67:                                               ; preds = %66, %41
  br label %68

68:                                               ; preds = %67, %2
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.mmc_host* @mmc_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.msmsdcc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @mmc_suspend_host(%struct.mmc_host*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
