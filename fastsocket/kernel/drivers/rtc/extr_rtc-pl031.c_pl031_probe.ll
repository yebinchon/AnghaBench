; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pl031.c_pl031_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pl031.c_pl031_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amba_id = type { i32 }
%struct.pl031_local = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pl031_interrupt = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rtc-pl031\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"pl031\00", align 1
@pl031_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.amba_id*)* @pl031_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl031_probe(%struct.amba_device* %0, %struct.amba_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pl031_local*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.amba_id* %1, %struct.amba_id** %5, align 8
  %8 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %9 = call i32 @amba_request_regions(%struct.amba_device* %8, i32* null)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %99

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.pl031_local* @kmalloc(i32 8, i32 %14)
  store %struct.pl031_local* %15, %struct.pl031_local** %7, align 8
  %16 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %17 = icmp ne %struct.pl031_local* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %96

21:                                               ; preds = %13
  %22 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %23 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %27 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %26, i32 0, i32 2
  %28 = call i32 @resource_size(%struct.TYPE_2__* %27)
  %29 = call i32 @ioremap(i32 %25, i32 %28)
  %30 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %31 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %33 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %93

39:                                               ; preds = %21
  %40 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %41 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %42 = call i32 @amba_set_drvdata(%struct.amba_device* %40, %struct.pl031_local* %41)
  %43 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %44 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @pl031_interrupt, align 4
  %49 = load i32, i32* @IRQF_DISABLED, align 4
  %50 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %51 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @request_irq(i32 %47, i32 %48, i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %39
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %86

58:                                               ; preds = %39
  %59 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %60 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %59, i32 0, i32 1
  %61 = load i32, i32* @THIS_MODULE, align 4
  %62 = call i32 @rtc_device_register(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %60, i32* @pl031_ops, i32 %61)
  %63 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %64 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %66 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %58
  %71 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %72 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %6, align 4
  br label %76

75:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %101

76:                                               ; preds = %70
  %77 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %78 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %83 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @free_irq(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %76, %55
  %87 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %88 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @iounmap(i32 %89)
  %91 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %92 = call i32 @amba_set_drvdata(%struct.amba_device* %91, %struct.pl031_local* null)
  br label %93

93:                                               ; preds = %86, %36
  %94 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %95 = call i32 @kfree(%struct.pl031_local* %94)
  br label %96

96:                                               ; preds = %93, %18
  %97 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %98 = call i32 @amba_release_regions(%struct.amba_device* %97)
  br label %99

99:                                               ; preds = %96, %12
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %75
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @amba_request_regions(%struct.amba_device*, i32*) #1

declare dso_local %struct.pl031_local* @kmalloc(i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, %struct.pl031_local*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @rtc_device_register(i8*, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.pl031_local*) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
