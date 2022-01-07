; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-of.c_esdhc_set_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-of.c_esdhc_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i64, i32 }

@ESDHC_SYSTEM_CONTROL = common dso_local global i64 0, align 8
@ESDHC_CLOCK_IPGEN = common dso_local global i32 0, align 4
@ESDHC_CLOCK_HCKEN = common dso_local global i32 0, align 4
@ESDHC_CLOCK_PEREN = common dso_local global i32 0, align 4
@ESDHC_CLOCK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"desired SD clock: %d, actual: %d\0A\00", align 1
@ESDHC_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@ESDHC_PREDIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @esdhc_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 2, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ESDHC_SYSTEM_CONTROL, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i32, i32* @ESDHC_CLOCK_IPGEN, align 4
  %13 = load i32, i32* @ESDHC_CLOCK_HCKEN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ESDHC_CLOCK_PEREN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ESDHC_CLOCK_MASK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @clrbits32(i64 %11, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %98

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %38, %23
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %26 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sdiv i32 %27, %28
  %30 = sdiv i32 %29, 16
  %31 = load i32, i32* %4, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 256
  br label %36

36:                                               ; preds = %33, %24
  %37 = phi i1 [ false, %24 ], [ %35, %33 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %5, align 4
  br label %24

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %57, %41
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %44 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sdiv i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = sdiv i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = icmp ugt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 16
  br label %55

55:                                               ; preds = %52, %42
  %56 = phi i1 [ false, %42 ], [ %54, %52 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %42

60:                                               ; preds = %55
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %62 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mmc_dev(i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %67 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sdiv i32 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = sdiv i32 %70, %71
  %73 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = ashr i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %6, align 4
  %78 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %79 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ESDHC_SYSTEM_CONTROL, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* @ESDHC_CLOCK_IPGEN, align 4
  %84 = load i32, i32* @ESDHC_CLOCK_HCKEN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @ESDHC_CLOCK_PEREN, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @ESDHC_DIVIDER_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = or i32 %87, %90
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @ESDHC_PREDIV_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %91, %94
  %96 = call i32 @setbits32(i64 %82, i32 %95)
  %97 = call i32 @mdelay(i32 100)
  br label %98

98:                                               ; preds = %60, %22
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %101 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  ret void
}

declare dso_local i32 @clrbits32(i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @setbits32(i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
