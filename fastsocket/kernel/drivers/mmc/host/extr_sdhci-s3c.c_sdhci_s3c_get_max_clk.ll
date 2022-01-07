; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_get_max_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_get_max_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_s3c = type { %struct.clk** }
%struct.clk = type { i32 }

@MAX_BUS_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @sdhci_s3c_get_max_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_s3c_get_max_clk(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_s3c*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %9 = call %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host* %8)
  store %struct.sdhci_s3c* %9, %struct.sdhci_s3c** %3, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %11 = call i32 @sdhci_s3c_check_sclk(%struct.sdhci_host* %10)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %36, %1
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MAX_BUS_CLK, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %3, align 8
  %18 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %17, i32 0, i32 0
  %19 = load %struct.clk**, %struct.clk*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.clk*, %struct.clk** %19, i64 %21
  %23 = load %struct.clk*, %struct.clk** %22, align 8
  store %struct.clk* %23, %struct.clk** %4, align 8
  %24 = load %struct.clk*, %struct.clk** %4, align 8
  %25 = icmp ne %struct.clk* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %36

27:                                               ; preds = %16
  %28 = load %struct.clk*, %struct.clk** %4, align 8
  %29 = call i32 @clk_get_rate(%struct.clk* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %27
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %12

39:                                               ; preds = %12
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.sdhci_s3c* @to_s3c(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_s3c_check_sclk(%struct.sdhci_host*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
