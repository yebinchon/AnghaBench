; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_set_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i64, i32, i32 }
%struct.at91mci_host = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@AT91_MCI_CR = common dso_local global i32 0, align 4
@AT91_MCI_MCIDIS = common dso_local global i32 0, align 4
@AT91_MCI_MCIEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"clkdiv = %d. mcck = %ld\0A\00", align 1
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"MMC: Setting controller bus width to 4\0A\00", align 1
@AT91_MCI_SDCR = common dso_local global i32 0, align 4
@AT91_MCI_SDCBUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"MMC: Setting controller bus width to 1\0A\00", align 1
@AT91_MCI_MR = common dso_local global i32 0, align 4
@AT91_MCI_CLKDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @at91_mci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_mci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.at91mci_host*, align 8
  %7 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.at91mci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.at91mci_host* %9, %struct.at91mci_host** %6, align 8
  %10 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %11 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @clk_get_rate(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %18 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %25 = load i32, i32* @AT91_MCI_CR, align 4
  %26 = load i32, i32* @AT91_MCI_MCIDIS, align 4
  %27 = call i32 @at91_mci_write(%struct.at91mci_host* %24, i32 %25, i32 %26)
  store i32 0, i32* %5, align 4
  br label %69

28:                                               ; preds = %2
  %29 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %30 = load i32, i32* @AT91_MCI_CR, align 4
  %31 = load i32, i32* @AT91_MCI_MCIEN, align 4
  %32 = call i32 @at91_mci_write(%struct.at91mci_host* %29, i32 %30, i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = urem i64 %33, %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %28
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %42, %46
  %48 = udiv i64 %47, 2
  %49 = sub i64 %48, 1
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %60

51:                                               ; preds = %28
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %52, %56
  %58 = udiv i64 %57, 2
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %51, %41
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  %65 = mul nsw i32 2, %64
  %66 = sext i32 %65 to i64
  %67 = udiv i64 %62, %66
  %68 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %67)
  br label %69

69:                                               ; preds = %60, %23
  %70 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %77 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %85 = load i32, i32* @AT91_MCI_SDCR, align 4
  %86 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %87 = load i32, i32* @AT91_MCI_SDCR, align 4
  %88 = call i32 @at91_mci_read(%struct.at91mci_host* %86, i32 %87)
  %89 = load i32, i32* @AT91_MCI_SDCBUS, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @at91_mci_write(%struct.at91mci_host* %84, i32 %85, i32 %90)
  br label %103

92:                                               ; preds = %75, %69
  %93 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %95 = load i32, i32* @AT91_MCI_SDCR, align 4
  %96 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %97 = load i32, i32* @AT91_MCI_SDCR, align 4
  %98 = call i32 @at91_mci_read(%struct.at91mci_host* %96, i32 %97)
  %99 = load i32, i32* @AT91_MCI_SDCBUS, align 4
  %100 = xor i32 %99, -1
  %101 = and i32 %98, %100
  %102 = call i32 @at91_mci_write(%struct.at91mci_host* %94, i32 %95, i32 %101)
  br label %103

103:                                              ; preds = %92, %82
  %104 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %105 = load i32, i32* @AT91_MCI_MR, align 4
  %106 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %107 = load i32, i32* @AT91_MCI_MR, align 4
  %108 = call i32 @at91_mci_read(%struct.at91mci_host* %106, i32 %107)
  %109 = load i32, i32* @AT91_MCI_CLKDIV, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @at91_mci_write(%struct.at91mci_host* %104, i32 %105, i32 %113)
  %115 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %116 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %103
  %122 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %123 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %140 [
    i32 130, label %125
    i32 128, label %132
    i32 129, label %139
  ]

125:                                              ; preds = %121
  %126 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %127 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @gpio_set_value(i64 %130, i32 0)
  br label %142

132:                                              ; preds = %121
  %133 = load %struct.at91mci_host*, %struct.at91mci_host** %6, align 8
  %134 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @gpio_set_value(i64 %137, i32 1)
  br label %142

139:                                              ; preds = %121
  br label %142

140:                                              ; preds = %121
  %141 = call i32 @WARN_ON(i32 1)
  br label %142

142:                                              ; preds = %140, %139, %132, %125
  br label %143

143:                                              ; preds = %142, %103
  ret void
}

declare dso_local %struct.at91mci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @at91_mci_write(%struct.at91mci_host*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @at91_mci_read(%struct.at91mci_host*, i32) #1

declare dso_local i32 @gpio_set_value(i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
