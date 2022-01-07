; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i64, i32 }
%struct.au1xmmc_host = type { i64 }

@MMC_POWER_OFF = common dso_local global i64 0, align 8
@MMC_POWER_ON = common dso_local global i64 0, align 8
@SD_CONFIG2_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @au1xmmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.au1xmmc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.au1xmmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.au1xmmc_host* %8, %struct.au1xmmc_host** %5, align 8
  %9 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MMC_POWER_OFF, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %16 = call i32 @au1xmmc_set_power(%struct.au1xmmc_host* %15, i32 0)
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MMC_POWER_ON, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %25 = call i32 @au1xmmc_set_power(%struct.au1xmmc_host* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %26, %14
  %28 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %37 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %42 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @au1xmmc_set_clock(%struct.au1xmmc_host* %41, i64 %44)
  %46 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %50 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %40, %32, %27
  %52 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %53 = call i32 @HOST_CONFIG2(%struct.au1xmmc_host* %52)
  %54 = call i32 @au_readl(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %67 [
    i32 128, label %58
    i32 129, label %62
  ]

58:                                               ; preds = %51
  %59 = load i32, i32* @SD_CONFIG2_WB, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %67

62:                                               ; preds = %51
  %63 = load i32, i32* @SD_CONFIG2_WB, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %51, %62, %58
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %70 = call i32 @HOST_CONFIG2(%struct.au1xmmc_host* %69)
  %71 = call i32 @au_writel(i32 %68, i32 %70)
  %72 = call i32 (...) @au_sync()
  ret void
}

declare dso_local %struct.au1xmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @au1xmmc_set_power(%struct.au1xmmc_host*, i32) #1

declare dso_local i32 @au1xmmc_set_clock(%struct.au1xmmc_host*, i64) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @HOST_CONFIG2(%struct.au1xmmc_host*) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @au_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
