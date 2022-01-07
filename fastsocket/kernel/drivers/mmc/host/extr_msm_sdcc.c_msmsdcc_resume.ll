; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.msmsdcc_host = type { i32, i64, i32, i64, i32, i32, i32 }

@MMCIMASK0 = common dso_local global i64 0, align 8
@MMC_TYPE_SDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @msmsdcc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msmsdcc_resume(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.msmsdcc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.mmc_host* @mmc_get_drvdata(%struct.platform_device* %6)
  store %struct.mmc_host* %7, %struct.mmc_host** %3, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = icmp ne %struct.mmc_host* %8, null
  br i1 %9, label %10, label %83

10:                                               ; preds = %1
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = call %struct.msmsdcc_host* @mmc_priv(%struct.mmc_host* %11)
  store %struct.msmsdcc_host* %12, %struct.msmsdcc_host** %5, align 8
  %13 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %14 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %13, i32 0, i32 2
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %18 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %10
  %22 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %23 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_enable(i32 %24)
  %26 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %27 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_enable(i32 %28)
  %30 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %31 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %21, %10
  %33 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %34 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %37 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MMCIMASK0, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %43 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %42, i32 0, i32 2
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %32
  %51 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %52 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MMC_TYPE_SDIO, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %60 = call i32 @mmc_resume_host(%struct.mmc_host* %59)
  br label %61

61:                                               ; preds = %58, %50, %32
  %62 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %63 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %68 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @enable_irq(i64 %69)
  br label %82

71:                                               ; preds = %61
  %72 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %73 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %5, align 8
  %78 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @enable_irq(i64 %79)
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %66
  br label %83

83:                                               ; preds = %82, %1
  ret i32 0
}

declare dso_local %struct.mmc_host* @mmc_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.msmsdcc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mmc_resume_host(%struct.mmc_host*) #1

declare dso_local i32 @enable_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
