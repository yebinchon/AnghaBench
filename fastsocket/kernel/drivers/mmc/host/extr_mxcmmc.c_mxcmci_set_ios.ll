; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_set_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i64, i32, i32 }
%struct.mxcmci_host = type { i64, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@CMD_DAT_CONT_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@MMC_POWER_ON = common dso_local global i64 0, align 8
@CMD_DAT_CONT_INIT = common dso_local global i32 0, align 4
@STR_STP_CLK_START_CLK = common dso_local global i32 0, align 4
@MMC_REG_STR_STP_CLK = common dso_local global i64 0, align 8
@STR_STP_CLK_STOP_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @mxcmci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxcmci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.mxcmci_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.mxcmci_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.mxcmci_host* %7, %struct.mxcmci_host** %5, align 8
  %8 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @CMD_DAT_CONT_BUS_WIDTH_4, align 4
  %15 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %16 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @CMD_DAT_CONT_BUS_WIDTH_4, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %23 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %19, %13
  %27 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %28 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %26
  %35 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %36 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %41 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = icmp ne i32 (i32, i32)* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %48 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (i32, i32)*, i32 (i32, i32)** %50, align 8
  %52 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %53 = call i32 @mmc_dev(%struct.mmc_host* %52)
  %54 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %51(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %46, %39, %34
  %59 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %60 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %63 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MMC_POWER_ON, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load i32, i32* @CMD_DAT_CONT_INIT, align 4
  %71 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %72 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %58
  br label %76

76:                                               ; preds = %75, %26
  %77 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %78 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %83 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %84 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @mxcmci_set_clk_rate(%struct.mxcmci_host* %82, i32 %85)
  %87 = load i32, i32* @STR_STP_CLK_START_CLK, align 4
  %88 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %89 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writew(i32 %87, i64 %92)
  br label %102

94:                                               ; preds = %76
  %95 = load i32, i32* @STR_STP_CLK_STOP_CLK, align 4
  %96 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %97 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MMC_REG_STR_STP_CLK, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writew(i32 %95, i64 %100)
  br label %102

102:                                              ; preds = %94, %81
  %103 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %104 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %107 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  ret void
}

declare dso_local %struct.mxcmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @mxcmci_set_clk_rate(%struct.mxcmci_host*, i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
