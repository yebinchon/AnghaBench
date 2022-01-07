; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.stmp3xxx_rtc_data = type { i64, i32, i8*, i8*, i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to get resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HW_RTC_STAT = common dso_local global i64 0, align 8
@BM_RTC_STAT_RTC_PRESENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"no device onboard\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BM_RTC_PERSISTENT0_ALARM_EN = common dso_local global i32 0, align 4
@BM_RTC_PERSISTENT0_ALARM_WAKE_EN = common dso_local global i32 0, align 4
@BM_RTC_PERSISTENT0_ALARM_WAKE = common dso_local global i32 0, align 4
@HW_RTC_PERSISTENT0 = common dso_local global i64 0, align 8
@stmp3xxx_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@stmp3xxx_rtc_interrupt = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"RTC alarm\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Cannot claim IRQ%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"RTC tick\00", align 1
@BM_RTC_CTRL_ONEMSEC_IRQ_EN = common dso_local global i32 0, align 4
@BM_RTC_CTRL_ALARM_IRQ_EN = common dso_local global i32 0, align 4
@HW_RTC_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stmp3xxx_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmp3xxx_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stmp3xxx_rtc_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.stmp3xxx_rtc_data* @kzalloc(i32 40, i32 %7)
  store %struct.stmp3xxx_rtc_data* %8, %struct.stmp3xxx_rtc_data** %4, align 8
  %9 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %10 = icmp ne %struct.stmp3xxx_rtc_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %176

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = call %struct.resource* @platform_get_resource(%struct.platform_device* %15, i32 %16, i32 0)
  store %struct.resource* %17, %struct.resource** %5, align 8
  %18 = load %struct.resource*, %struct.resource** %5, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %172

26:                                               ; preds = %14
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = call i32 @resource_size(%struct.resource* %30)
  %32 = call i64 @ioremap(i32 %29, i32 %31)
  %33 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %34 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %36 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %26
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %172

45:                                               ; preds = %26
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = call i8* @platform_get_irq(%struct.platform_device* %46, i32 0)
  %48 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %49 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i8* @platform_get_irq(%struct.platform_device* %50, i32 1)
  %52 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %53 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* @HW_RTC_STAT, align 8
  %55 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %56 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = call i32 @__raw_readl(i64 %58)
  %60 = load i32, i32* @BM_RTC_STAT_RTC_PRESENT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %45
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %167

69:                                               ; preds = %45
  %70 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %71 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @stmp3xxx_reset_block(i64 %72, i32 1)
  %74 = load i32, i32* @BM_RTC_PERSISTENT0_ALARM_EN, align 4
  %75 = load i32, i32* @BM_RTC_PERSISTENT0_ALARM_WAKE_EN, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @BM_RTC_PERSISTENT0_ALARM_WAKE, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %80 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @HW_RTC_PERSISTENT0, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @stmp3xxx_clearl(i32 %78, i64 %83)
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load i32, i32* @THIS_MODULE, align 4
  %91 = call i32 @rtc_device_register(i32 %87, i32* %89, i32* @stmp3xxx_rtc_ops, i32 %90)
  %92 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %93 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %95 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %69
  %100 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %101 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @PTR_ERR(i32 %102)
  store i32 %103, i32* %6, align 4
  br label %167

104:                                              ; preds = %69
  %105 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %106 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %108 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @stmp3xxx_rtc_interrupt, align 4
  %111 = load i32, i32* @IRQF_DISABLED, align 4
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @request_irq(i8* %109, i32 %110, i32 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %104
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %121 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32*, i8*, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %122)
  br label %153

124:                                              ; preds = %104
  %125 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %126 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %125, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* @stmp3xxx_rtc_interrupt, align 4
  %129 = load i32, i32* @IRQF_DISABLED, align 4
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @request_irq(i8* %127, i32 %128, i32 %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %124
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %139 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i32*, i8*, ...) @dev_err(i32* %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %140)
  br label %146

142:                                              ; preds = %124
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %145 = call i32 @platform_set_drvdata(%struct.platform_device* %143, %struct.stmp3xxx_rtc_data* %144)
  store i32 0, i32* %2, align 4
  br label %176

146:                                              ; preds = %135
  %147 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %148 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @free_irq(i8* %149, i32* %151)
  br label %153

153:                                              ; preds = %146, %117
  %154 = load i32, i32* @BM_RTC_CTRL_ONEMSEC_IRQ_EN, align 4
  %155 = load i32, i32* @BM_RTC_CTRL_ALARM_IRQ_EN, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %158 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @HW_RTC_CTRL, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @stmp3xxx_clearl(i32 %156, i64 %161)
  %163 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %164 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @rtc_device_unregister(i32 %165)
  br label %167

167:                                              ; preds = %153, %99, %63
  %168 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %169 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @iounmap(i64 %170)
  br label %172

172:                                              ; preds = %167, %39, %20
  %173 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %174 = call i32 @kfree(%struct.stmp3xxx_rtc_data* %173)
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %172, %142, %11
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.stmp3xxx_rtc_data* @kzalloc(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @stmp3xxx_reset_block(i64, i32) #1

declare dso_local i32 @stmp3xxx_clearl(i32, i64) #1

declare dso_local i32 @rtc_device_register(i32, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @request_irq(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stmp3xxx_rtc_data*) #1

declare dso_local i32 @free_irq(i8*, i32*) #1

declare dso_local i32 @rtc_device_unregister(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.stmp3xxx_rtc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
