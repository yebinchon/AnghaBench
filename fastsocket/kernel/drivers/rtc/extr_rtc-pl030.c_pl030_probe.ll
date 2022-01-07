; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pl030.c_pl030_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pl030.c_pl030_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amba_id = type { i32 }
%struct.pl030_rtc = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RTC_CR = common dso_local global i64 0, align 8
@RTC_EOI = common dso_local global i64 0, align 8
@pl030_interrupt = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rtc-pl030\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pl030\00", align 1
@pl030_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.amba_id*)* @pl030_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl030_probe(%struct.amba_device* %0, %struct.amba_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca %struct.pl030_rtc*, align 8
  %7 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.amba_id* %1, %struct.amba_id** %5, align 8
  %8 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %9 = call i32 @amba_request_regions(%struct.amba_device* %8, i32* null)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %104

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.pl030_rtc* @kmalloc(i32 16, i32 %14)
  store %struct.pl030_rtc* %15, %struct.pl030_rtc** %6, align 8
  %16 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %17 = icmp ne %struct.pl030_rtc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %101

21:                                               ; preds = %13
  %22 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %23 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %27 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %26, i32 0, i32 2
  %28 = call i32 @resource_size(%struct.TYPE_2__* %27)
  %29 = call i64 @ioremap(i32 %25, i32 %28)
  %30 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %31 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %33 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %98

39:                                               ; preds = %21
  %40 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %41 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RTC_CR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @__raw_writel(i32 0, i64 %44)
  %46 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %47 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RTC_EOI, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @__raw_writel(i32 0, i64 %50)
  %52 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %53 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %54 = call i32 @amba_set_drvdata(%struct.amba_device* %52, %struct.pl030_rtc* %53)
  %55 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %56 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @pl030_interrupt, align 4
  %61 = load i32, i32* @IRQF_DISABLED, align 4
  %62 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %63 = call i32 @request_irq(i32 %59, i32 %60, i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.pl030_rtc* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %39
  br label %93

67:                                               ; preds = %39
  %68 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %69 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %68, i32 0, i32 1
  %70 = load i32, i32* @THIS_MODULE, align 4
  %71 = call i32 @rtc_device_register(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %69, i32* @pl030_ops, i32 %70)
  %72 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %73 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %75 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %81 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PTR_ERR(i32 %82)
  store i32 %83, i32* %7, align 4
  br label %85

84:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %106

85:                                               ; preds = %79
  %86 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %87 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %92 = call i32 @free_irq(i32 %90, %struct.pl030_rtc* %91)
  br label %93

93:                                               ; preds = %85, %66
  %94 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %95 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @iounmap(i64 %96)
  br label %98

98:                                               ; preds = %93, %36
  %99 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %100 = call i32 @kfree(%struct.pl030_rtc* %99)
  br label %101

101:                                              ; preds = %98, %18
  %102 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %103 = call i32 @amba_release_regions(%struct.amba_device* %102)
  br label %104

104:                                              ; preds = %101, %12
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %84
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @amba_request_regions(%struct.amba_device*, i32*) #1

declare dso_local %struct.pl030_rtc* @kmalloc(i32, i32) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, %struct.pl030_rtc*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.pl030_rtc*) #1

declare dso_local i32 @rtc_device_register(i8*, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @free_irq(i32, %struct.pl030_rtc*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.pl030_rtc*) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
