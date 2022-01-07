; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_power_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@MMC_CS_HIGH = common dso_local global i32 0, align 4
@MMC_BUSMODE_PUSHPULL = common dso_local global i32 0, align 4
@MMC_CS_DONTCARE = common dso_local global i32 0, align 4
@MMC_BUSMODE_OPENDRAIN = common dso_local global i32 0, align 4
@MMC_POWER_UP = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@MMC_TIMING_LEGACY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%s: Minimum clock frequency too high for identification mode\0A\00", align 1
@MMC_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @mmc_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_power_up(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @ffs(i64 %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @fls(i32 %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %8
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %23 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %26 = call i64 @mmc_host_is_spi(%struct.mmc_host* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load i32, i32* @MMC_CS_HIGH, align 4
  %30 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %31 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 6
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @MMC_BUSMODE_PUSHPULL, align 4
  %34 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %35 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i32 %33, i32* %36, align 4
  br label %46

37:                                               ; preds = %20
  %38 = load i32, i32* @MMC_CS_DONTCARE, align 4
  %39 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @MMC_BUSMODE_OPENDRAIN, align 4
  %43 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %44 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %28
  %47 = load i32, i32* @MMC_POWER_UP, align 4
  %48 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %49 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @MMC_BUS_WIDTH_1, align 4
  %52 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %53 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @MMC_TIMING_LEGACY, align 4
  %56 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %57 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %60 = call i32 @mmc_set_ios(%struct.mmc_host* %59)
  %61 = call i32 @mmc_delay(i32 10)
  %62 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %63 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 400000
  br i1 %65, label %66, label %76

66:                                               ; preds = %46
  %67 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %68 = call i32 @mmc_hostname(%struct.mmc_host* %67)
  %69 = call i32 @pr_warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %71 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %74 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  br label %80

76:                                               ; preds = %46
  %77 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %78 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 400000, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %66
  %81 = load i32, i32* @MMC_POWER_ON, align 4
  %82 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %83 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 4
  %85 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %86 = call i32 @mmc_set_ios(%struct.mmc_host* %85)
  %87 = call i32 @mmc_delay(i32 10)
  ret void
}

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_set_ios(%struct.mmc_host*) #1

declare dso_local i32 @mmc_delay(i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
