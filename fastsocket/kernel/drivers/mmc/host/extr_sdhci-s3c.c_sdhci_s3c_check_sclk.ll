; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_check_sclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_check_sclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.sdhci_s3c = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@S3C_SDHCI_CONTROL2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"restored ctrl2 clock setting\0A\00", align 1
@S3C_SDHCI_CTRL2_SELBASECLK_MASK = common dso_local global i32 0, align 4
@S3C_SDHCI_CTRL2_SELBASECLK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_s3c_check_sclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_s3c_check_sclk(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_s3c*, align 8
  %4 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %5 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %6 = call %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host* %5)
  store %struct.sdhci_s3c* %6, %struct.sdhci_s3c** %3, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %8 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @S3C_SDHCI_CONTROL2, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @get_curclk(i32 %13)
  %15 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %3, align 8
  %16 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %1
  %20 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %3, align 8
  %21 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @S3C_SDHCI_CTRL2_SELBASECLK_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %3, align 8
  %30 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @S3C_SDHCI_CTRL2_SELBASECLK_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %38 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 128
  %41 = call i32 @writel(i32 %36, i64 %40)
  br label %42

42:                                               ; preds = %19, %1
  ret void
}

declare dso_local %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @get_curclk(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
