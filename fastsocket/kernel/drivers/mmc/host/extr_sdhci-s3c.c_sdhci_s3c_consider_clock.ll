; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_consider_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_consider_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_s3c = type { %struct.TYPE_2__*, %struct.clk** }
%struct.TYPE_2__ = type { i32 }
%struct.clk = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"clk %d: rate %ld, want %d, got %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_s3c*, i32, i32)* @sdhci_s3c_consider_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_s3c_consider_clock(%struct.sdhci_s3c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_s3c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  store %struct.sdhci_s3c* %0, %struct.sdhci_s3c** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %12 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %11, i32 0, i32 1
  %13 = load %struct.clk**, %struct.clk*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.clk*, %struct.clk** %13, i64 %15
  %17 = load %struct.clk*, %struct.clk** %16, align 8
  store %struct.clk* %17, %struct.clk** %9, align 8
  %18 = load %struct.clk*, %struct.clk** %9, align 8
  %19 = icmp ne %struct.clk* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @UINT_MAX, align 4
  store i32 %21, i32* %4, align 4
  br label %62

22:                                               ; preds = %3
  %23 = load %struct.clk*, %struct.clk** %9, align 8
  %24 = call i64 @clk_get_rate(%struct.clk* %23)
  store i64 %24, i64* %8, align 8
  store i32 1, i32* %10, align 4
  br label %25

25:                                               ; preds = %38, %22
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 256
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %29, %31
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp ule i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %10, align 4
  br label %25

41:                                               ; preds = %36, %25
  %42 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %43 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %49, %51
  %53 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %47, i32 %48, i64 %52)
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %56, %58
  %60 = sub i64 %55, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %41, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
