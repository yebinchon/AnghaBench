; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pwm.c_s3c_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pwm.c_s3c_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.pwm_device = type { i32, i32, i8*, i8*, %struct.platform_device* }

@.str = private unnamed_addr constant [35 x i8] c"TIMER4 is currently not supported\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to allocate pwm_device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"pwm-tin\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to get pwm tin clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"pwm-tdiv\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to get pwm tdiv clk\0A\00", align 1
@S3C2410_TCON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to register pwm\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"config bits %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"tin at %lu, tdiv at %lu, tin=%sclk, base %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %150

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.pwm_device* @kzalloc(i32 32, i32 %23)
  store %struct.pwm_device* %24, %struct.pwm_device** %5, align 8
  %25 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %26 = icmp eq %struct.pwm_device* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %150

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %35 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %34, i32 0, i32 4
  store %struct.platform_device* %33, %struct.platform_device** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %38 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %46

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = mul i32 %43, 4
  %45 = add i32 %44, 4
  br label %46

46:                                               ; preds = %42, %41
  %47 = phi i32 [ 0, %41 ], [ %45, %42 ]
  %48 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %49 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i8* @clk_get(%struct.device* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %53 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %55 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %63 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %9, align 4
  br label %146

66:                                               ; preds = %46
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i8* @clk_get(%struct.device* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %69 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %70 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %72 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @IS_ERR(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %66
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %79 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %80 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %9, align 4
  br label %141

83:                                               ; preds = %66
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @local_irq_save(i64 %84)
  %86 = load i32, i32* @S3C2410_TCON, align 4
  %87 = call i32 @__raw_readl(i32 %86)
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %7, align 8
  %89 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %90 = call i64 @pwm_tcon_invert(%struct.pwm_device* %89)
  %91 = load i64, i64* %7, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* @S3C2410_TCON, align 4
  %95 = call i32 @__raw_writel(i64 %93, i32 %94)
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @local_irq_restore(i64 %96)
  %98 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %99 = call i32 @pwm_register(%struct.pwm_device* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %83
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = call i32 @dev_err(%struct.device* %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %136

105:                                              ; preds = %83
  %106 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %107 = load i32, i32* @S3C2410_TCON, align 4
  %108 = call i32 @__raw_readl(i32 %107)
  %109 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %110 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %108, %111
  %113 = and i32 %112, 15
  %114 = call i32 @pwm_dbg(%struct.pwm_device* %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %117 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @clk_get_rate(i8* %118)
  %120 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %121 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @clk_get_rate(i8* %122)
  %124 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %125 = call i64 @pwm_is_tdiv(%struct.pwm_device* %124)
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %129 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %130 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_info(%struct.device* %115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %119, i32 %123, i8* %128, i32 %131)
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %135 = call i32 @platform_set_drvdata(%struct.platform_device* %133, %struct.pwm_device* %134)
  store i32 0, i32* %2, align 4
  br label %150

136:                                              ; preds = %102
  %137 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %138 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @clk_put(i8* %139)
  br label %141

141:                                              ; preds = %136, %76
  %142 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %143 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @clk_put(i8* %144)
  br label %146

146:                                              ; preds = %141, %59
  %147 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %148 = call i32 @kfree(%struct.pwm_device* %147)
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %146, %105, %27, %17
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.pwm_device* @kzalloc(i32, i32) #1

declare dso_local i8* @clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i64 @pwm_tcon_invert(%struct.pwm_device*) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @pwm_register(%struct.pwm_device*) #1

declare dso_local i32 @pwm_dbg(%struct.pwm_device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i64 @pwm_is_tdiv(%struct.pwm_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pwm_device*) #1

declare dso_local i32 @clk_put(i8*) #1

declare dso_local i32 @kfree(%struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
