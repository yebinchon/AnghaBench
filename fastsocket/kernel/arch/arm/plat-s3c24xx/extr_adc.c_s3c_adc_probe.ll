; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_adc.c_s3c_adc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_adc.c_s3c_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc_device = type { i32, i64, i32, i32, %struct.platform_device* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to allocate adc_device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get adc irq\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@s3c_adc_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to attach adc irq\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to get adc clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to find registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to map registers\0A\00", align 1
@S3C2410_ADCCON_PRSCEN = common dso_local global i32 0, align 4
@S3C2410_ADCCON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"attached adc driver\0A\00", align 1
@adc_dev = common dso_local global %struct.adc_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.adc_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.adc_device* @kzalloc(i32 32, i32 %10)
  store %struct.adc_device* %11, %struct.adc_device** %5, align 8
  %12 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %13 = icmp eq %struct.adc_device* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %136

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %22 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %21, i32 0, i32 4
  store %struct.platform_device* %20, %struct.platform_device** %22, align 8
  %23 = call i32 @S3C2410_ADCCON_PRSCVL(i32 49)
  %24 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %25 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call i64 @platform_get_irq(%struct.platform_device* %26, i32 1)
  %28 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %29 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %31 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %132

39:                                               ; preds = %19
  %40 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %41 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @s3c_adc_irq, align 4
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_name(%struct.device* %44)
  %46 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %47 = call i32 @request_irq(i64 %42, i32 %43, i32 0, i32 %45, %struct.adc_device* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %132

53:                                               ; preds = %39
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @clk_get(%struct.device* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %57 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %59 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %67 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %7, align 4
  br label %126

70:                                               ; preds = %53
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load i32, i32* @IORESOURCE_MEM, align 4
  %73 = call %struct.resource* @platform_get_resource(%struct.platform_device* %71, i32 %72, i32 0)
  store %struct.resource* %73, %struct.resource** %6, align 8
  %74 = load %struct.resource*, %struct.resource** %6, align 8
  %75 = icmp ne %struct.resource* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* @ENXIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %121

81:                                               ; preds = %70
  %82 = load %struct.resource*, %struct.resource** %6, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.resource*, %struct.resource** %6, align 8
  %86 = call i32 @resource_size(%struct.resource* %85)
  %87 = call i32 @ioremap(i32 %84, i32 %86)
  %88 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %89 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %91 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %81
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %97 = load i32, i32* @ENXIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %121

99:                                               ; preds = %81
  %100 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %101 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @clk_enable(i32 %102)
  %104 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %105 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @S3C2410_ADCCON_PRSCEN, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %110 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @S3C2410_ADCCON, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i32 @writel(i32 %108, i32 %113)
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @dev_info(%struct.device* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %119 = call i32 @platform_set_drvdata(%struct.platform_device* %117, %struct.adc_device* %118)
  %120 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  store %struct.adc_device* %120, %struct.adc_device** @adc_dev, align 8
  store i32 0, i32* %2, align 4
  br label %136

121:                                              ; preds = %94, %76
  %122 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %123 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @clk_put(i32 %124)
  br label %126

126:                                              ; preds = %121, %63
  %127 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %128 = getelementptr inbounds %struct.adc_device, %struct.adc_device* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %131 = call i32 @free_irq(i64 %129, %struct.adc_device* %130)
  br label %132

132:                                              ; preds = %126, %50, %34
  %133 = load %struct.adc_device*, %struct.adc_device** %5, align 8
  %134 = call i32 @kfree(%struct.adc_device* %133)
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %132, %99, %14
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.adc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @S3C2410_ADCCON_PRSCVL(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.adc_device*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.adc_device*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @free_irq(i64, %struct.adc_device*) #1

declare dso_local i32 @kfree(%struct.adc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
