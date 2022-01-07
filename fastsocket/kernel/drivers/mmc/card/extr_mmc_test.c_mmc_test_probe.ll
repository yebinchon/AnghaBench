; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i64, i32 }

@MMC_TYPE_MMC = common dso_local global i64 0, align 8
@MMC_TYPE_SD = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@dev_attr_test = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Card claimed for testing.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_test_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_probe(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %5 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MMC_TYPE_MMC, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MMC_TYPE_SD, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %31

19:                                               ; preds = %10, %1
  %20 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %20, i32 0, i32 1
  %22 = call i32 @device_create_file(i32* %21, i32* @dev_attr_test)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %31

27:                                               ; preds = %19
  %28 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %29 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %28, i32 0, i32 1
  %30 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %25, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
