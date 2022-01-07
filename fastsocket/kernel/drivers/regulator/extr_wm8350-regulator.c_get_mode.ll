; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_get_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350_dcdc_efficiency = type { i32, i32, i32 }

@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.wm8350_dcdc_efficiency*)* @get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mode(i32 %0, %struct.wm8350_dcdc_efficiency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8350_dcdc_efficiency*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.wm8350_dcdc_efficiency* %1, %struct.wm8350_dcdc_efficiency** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %40, %2
  %8 = load %struct.wm8350_dcdc_efficiency*, %struct.wm8350_dcdc_efficiency** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.wm8350_dcdc_efficiency, %struct.wm8350_dcdc_efficiency* %8, i64 %10
  %12 = getelementptr inbounds %struct.wm8350_dcdc_efficiency, %struct.wm8350_dcdc_efficiency* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %41

15:                                               ; preds = %7
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.wm8350_dcdc_efficiency*, %struct.wm8350_dcdc_efficiency** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.wm8350_dcdc_efficiency, %struct.wm8350_dcdc_efficiency* %17, i64 %19
  %21 = getelementptr inbounds %struct.wm8350_dcdc_efficiency, %struct.wm8350_dcdc_efficiency* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %16, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.wm8350_dcdc_efficiency*, %struct.wm8350_dcdc_efficiency** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.wm8350_dcdc_efficiency, %struct.wm8350_dcdc_efficiency* %26, i64 %28
  %30 = getelementptr inbounds %struct.wm8350_dcdc_efficiency, %struct.wm8350_dcdc_efficiency* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %25, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.wm8350_dcdc_efficiency*, %struct.wm8350_dcdc_efficiency** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.wm8350_dcdc_efficiency, %struct.wm8350_dcdc_efficiency* %34, i64 %36
  %38 = getelementptr inbounds %struct.wm8350_dcdc_efficiency, %struct.wm8350_dcdc_efficiency* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %24, %15
  br label %7

41:                                               ; preds = %7
  %42 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
