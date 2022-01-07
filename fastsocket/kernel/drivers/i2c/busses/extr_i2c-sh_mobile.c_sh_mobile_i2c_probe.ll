; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, i32 }
%struct.sh_mobile_i2c_data = type { i32, i32*, i32, i32, %struct.i2c_adapter, i32* }
%struct.i2c_adapter = type { i32, i32, i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot allocate private data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"i2c%d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot get clock \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"cannot request IRQ\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot find IO resource\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"cannot map IO\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@sh_mobile_i2c_algorithm = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"cannot add numbered adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_mobile_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sh_mobile_i2c_data*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca [8 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sh_mobile_i2c_data* @kzalloc(i32 72, i32 %10)
  store %struct.sh_mobile_i2c_data* %11, %struct.sh_mobile_i2c_data** %4, align 8
  %12 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %13 = icmp eq %struct.sh_mobile_i2c_data* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %162

20:                                               ; preds = %1
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snprintf(i8* %21, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %29 = call i32 @clk_get(i32* %27, i8* %28)
  %30 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %31 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %33 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %20
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %43 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %9, align 4
  br label %158

46:                                               ; preds = %20
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = call i32 @sh_mobile_i2c_hook_irqs(%struct.platform_device* %47, i32 1)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 1
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %153

55:                                               ; preds = %46
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 1
  %58 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %59 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %58, i32 0, i32 5
  store i32* %57, i32** %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %62 = call i32 @platform_set_drvdata(%struct.platform_device* %60, %struct.sh_mobile_i2c_data* %61)
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load i32, i32* @IORESOURCE_MEM, align 4
  %65 = call %struct.resource* @platform_get_resource(%struct.platform_device* %63, i32 %64, i32 0)
  store %struct.resource* %65, %struct.resource** %6, align 8
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = icmp eq %struct.resource* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 1
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %150

74:                                               ; preds = %55
  %75 = load %struct.resource*, %struct.resource** %6, align 8
  %76 = call i32 @resource_size(%struct.resource* %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32* @ioremap(i32 %79, i32 %80)
  %82 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %83 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %85 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %74
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 1
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @ENXIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  br label %150

94:                                               ; preds = %74
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 1
  %97 = call i32 @pm_suspend_ignore_children(i32* %96, i32 1)
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 1
  %100 = call i32 @pm_runtime_enable(i32* %99)
  %101 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %102 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %101, i32 0, i32 4
  store %struct.i2c_adapter* %102, %struct.i2c_adapter** %5, align 8
  %103 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %104 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %105 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %103, %struct.sh_mobile_i2c_data* %104)
  %106 = load i32, i32* @THIS_MODULE, align 4
  %107 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %108 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %110 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %109, i32 0, i32 4
  store i32* @sh_mobile_i2c_algorithm, i32** %110, align 8
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 1
  %113 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %114 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i32* %112, i32** %115, align 8
  %116 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %117 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %116, i32 0, i32 0
  store i32 5, i32* %117, align 8
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %122 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %124 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @strlcpy(i32 %125, i32 %128, i32 4)
  %130 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %131 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %130, i32 0, i32 3
  %132 = call i32 @spin_lock_init(i32* %131)
  %133 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %134 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %133, i32 0, i32 2
  %135 = call i32 @init_waitqueue_head(i32* %134)
  %136 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %137 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %94
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 1
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %145

144:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %162

145:                                              ; preds = %140
  %146 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %147 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @iounmap(i32* %148)
  br label %150

150:                                              ; preds = %145, %88, %68
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = call i32 @sh_mobile_i2c_hook_irqs(%struct.platform_device* %151, i32 0)
  br label %153

153:                                              ; preds = %150, %51
  %154 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %155 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @clk_put(i32 %156)
  br label %158

158:                                              ; preds = %153, %37
  %159 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %160 = call i32 @kfree(%struct.sh_mobile_i2c_data* %159)
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %158, %144, %14
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.sh_mobile_i2c_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sh_mobile_i2c_hook_irqs(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sh_mobile_i2c_data*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @pm_suspend_ignore_children(i32*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @kfree(%struct.sh_mobile_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
