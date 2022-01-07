; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_set_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32, i32 }
%struct.sdhci_s3c = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.clk** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i64, %struct.mmc_ios*, i32*)* }
%struct.mmc_ios = type { i32 }
%struct.clk = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@MAX_BUS_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"selected source %d, clock %d, delta %d\0A\00", align 1
@SDHCI_CLOCK_CONTROL = common dso_local global i64 0, align 8
@S3C_SDHCI_CONTROL2 = common dso_local global i64 0, align 8
@S3C_SDHCI_CTRL2_SELBASECLK_MASK = common dso_local global i32 0, align 4
@S3C_SDHCI_CTRL2_SELBASECLK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_s3c_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_s3c_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_s3c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.clk*, align 8
  %12 = alloca %struct.mmc_ios, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = call %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host* %13)
  store %struct.sdhci_s3c* %14, %struct.sdhci_s3c** %5, align 8
  %15 = load i32, i32* @UINT_MAX, align 4
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %122

19:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MAX_BUS_CLK, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @sdhci_s3c_consider_clock(%struct.sdhci_s3c* %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %20

39:                                               ; preds = %20
  %40 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %41 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46)
  %48 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %49 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %39
  %54 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %55 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %54, i32 0, i32 3
  %56 = load %struct.clk**, %struct.clk*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.clk*, %struct.clk** %56, i64 %58
  %60 = load %struct.clk*, %struct.clk** %59, align 8
  store %struct.clk* %60, %struct.clk** %11, align 8
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %62 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SDHCI_CLOCK_CONTROL, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writew(i32 0, i64 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %69 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.clk*, %struct.clk** %11, align 8
  %71 = call i32 @clk_get_rate(%struct.clk* %70)
  %72 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %73 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %75 = call i32 @sdhci_s3c_get_timeout_clk(%struct.sdhci_host* %74)
  %76 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %77 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %79 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @S3C_SDHCI_CONTROL2, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readl(i64 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* @S3C_SDHCI_CTRL2_SELBASECLK_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @S3C_SDHCI_CTRL2_SELBASECLK_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %95 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @S3C_SDHCI_CONTROL2, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  br label %100

100:                                              ; preds = %53, %39
  %101 = load i32, i32* %4, align 4
  %102 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %12, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %104 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %103, i32 0, i32 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_4__*, i64, %struct.mmc_ios*, i32*)*, i32 (%struct.TYPE_4__*, i64, %struct.mmc_ios*, i32*)** %106, align 8
  %108 = icmp ne i32 (%struct.TYPE_4__*, i64, %struct.mmc_ios*, i32*)* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %100
  %110 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %111 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %110, i32 0, i32 2
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_4__*, i64, %struct.mmc_ios*, i32*)*, i32 (%struct.TYPE_4__*, i64, %struct.mmc_ios*, i32*)** %113, align 8
  %115 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %116 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %119 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 %114(%struct.TYPE_4__* %117, i64 %120, %struct.mmc_ios* %12, i32* null)
  br label %122

122:                                              ; preds = %18, %109, %100
  ret void
}

declare dso_local %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_s3c_consider_clock(%struct.sdhci_s3c*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @sdhci_s3c_get_timeout_clk(%struct.sdhci_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
