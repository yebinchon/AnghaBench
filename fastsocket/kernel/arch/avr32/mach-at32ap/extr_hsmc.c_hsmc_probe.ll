; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_hsmc.c_hsmc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_hsmc.c_hsmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.clk*, %struct.clk* }
%struct.clk = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i64, i64 }

@hsmc = common dso_local global %struct.TYPE_5__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mck\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Atmel Static Memory Controller at 0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hsmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsmc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hsmc, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %104

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 0)
  store %struct.resource* %16, %struct.resource** %4, align 8
  %17 = load %struct.resource*, %struct.resource** %4, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %104

22:                                               ; preds = %13
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.clk* @clk_get(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %25, %struct.clk** %5, align 8
  %26 = load %struct.clk*, %struct.clk** %5, align 8
  %27 = call i64 @IS_ERR(%struct.clk* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.clk*, %struct.clk** %5, align 8
  %31 = call i32 @PTR_ERR(%struct.clk* %30)
  store i32 %31, i32* %2, align 4
  br label %104

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call %struct.clk* @clk_get(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %35, %struct.clk** %6, align 8
  %36 = load %struct.clk*, %struct.clk** %6, align 8
  %37 = call i64 @IS_ERR(%struct.clk* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.clk*, %struct.clk** %6, align 8
  %41 = call i32 @PTR_ERR(%struct.clk* %40)
  store i32 %41, i32* %7, align 4
  br label %100

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.TYPE_5__* @kzalloc(i32 4, i32 %45)
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** @hsmc, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hsmc, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %97

50:                                               ; preds = %42
  %51 = load %struct.clk*, %struct.clk** %5, align 8
  %52 = call i32 @clk_enable(%struct.clk* %51)
  %53 = load %struct.clk*, %struct.clk** %6, align 8
  %54 = call i32 @clk_enable(%struct.clk* %53)
  %55 = load %struct.clk*, %struct.clk** %5, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hsmc, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store %struct.clk* %55, %struct.clk** %57, align 8
  %58 = load %struct.clk*, %struct.clk** %6, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hsmc, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store %struct.clk* %58, %struct.clk** %60, align 8
  %61 = load %struct.resource*, %struct.resource** %4, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.resource*, %struct.resource** %4, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.resource*, %struct.resource** %4, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = add nsw i64 %70, 1
  %72 = call i32 @ioremap(i64 %63, i64 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hsmc, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hsmc, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %50
  br label %90

80:                                               ; preds = %50
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.resource*, %struct.resource** %4, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @dev_info(i32* %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hsmc, align 8
  %89 = call i32 @platform_set_drvdata(%struct.platform_device* %87, %struct.TYPE_5__* %88)
  store i32 0, i32* %2, align 4
  br label %104

90:                                               ; preds = %79
  %91 = load %struct.clk*, %struct.clk** %6, align 8
  %92 = call i32 @clk_disable(%struct.clk* %91)
  %93 = load %struct.clk*, %struct.clk** %5, align 8
  %94 = call i32 @clk_disable(%struct.clk* %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hsmc, align 8
  %96 = call i32 @kfree(%struct.TYPE_5__* %95)
  br label %97

97:                                               ; preds = %90, %49
  %98 = load %struct.clk*, %struct.clk** %6, align 8
  %99 = call i32 @clk_put(%struct.clk* %98)
  br label %100

100:                                              ; preds = %97, %39
  %101 = load %struct.clk*, %struct.clk** %5, align 8
  %102 = call i32 @clk_put(%struct.clk* %101)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @hsmc, align 8
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %80, %29, %19, %10
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i32 @clk_enable(%struct.clk*) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @clk_disable(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
