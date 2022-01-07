; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-simtec.c_simtec_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-simtec.c_simtec_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.simtec_i2c_data = type { %struct.simtec_i2c_data*, i32*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, %struct.simtec_i2c_data* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot allocate private data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot find IO resource\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"cannot request IO\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"cannot map IO\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Simtec I2C\00", align 1
@simtec_i2c_setsda = common dso_local global i32 0, align 4
@simtec_i2c_setscl = common dso_local global i32 0, align 4
@simtec_i2c_getsda = common dso_local global i32 0, align 4
@simtec_i2c_getscl = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @simtec_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simtec_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.simtec_i2c_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.simtec_i2c_data* @kzalloc(i32 80, i32 %8)
  store %struct.simtec_i2c_data* %9, %struct.simtec_i2c_data** %4, align 8
  %10 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %11 = icmp eq %struct.simtec_i2c_data* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %147

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.simtec_i2c_data* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %5, align 8
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = icmp eq %struct.resource* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %143

33:                                               ; preds = %18
  %34 = load %struct.resource*, %struct.resource** %5, align 8
  %35 = call i32 @resource_size(%struct.resource* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.resource*, %struct.resource** %5, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.simtec_i2c_data* @request_mem_region(i32 %38, i32 %39, i32 %42)
  %44 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %45 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %44, i32 0, i32 0
  store %struct.simtec_i2c_data* %43, %struct.simtec_i2c_data** %45, align 8
  %46 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %47 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %46, i32 0, i32 0
  %48 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %47, align 8
  %49 = icmp eq %struct.simtec_i2c_data* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @ENXIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %143

56:                                               ; preds = %33
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32* @ioremap(i32 %59, i32 %60)
  %62 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %63 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %65 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @ENXIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %134

74:                                               ; preds = %56
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %77 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 8
  %79 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %80 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %79, i32 0, i32 3
  %81 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %82 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %87 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32* %85, i32** %89, align 8
  %90 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %91 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @strlcpy(i32 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %95 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %96 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %97 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 6
  store %struct.simtec_i2c_data* %95, %struct.simtec_i2c_data** %98, align 8
  %99 = load i32, i32* @simtec_i2c_setsda, align 4
  %100 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %101 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 5
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @simtec_i2c_setscl, align 4
  %104 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %105 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* @simtec_i2c_getsda, align 4
  %108 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %109 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @simtec_i2c_getscl, align 4
  %112 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %113 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 8
  %115 = load i32, i32* @HZ, align 4
  %116 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %117 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %120 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 20, i32* %121, align 8
  %122 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %123 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %122, i32 0, i32 2
  %124 = call i32 @i2c_bit_add_bus(%struct.TYPE_6__* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %74
  br label %129

128:                                              ; preds = %74
  store i32 0, i32* %2, align 4
  br label %147

129:                                              ; preds = %127
  %130 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %131 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @iounmap(i32* %132)
  br label %134

134:                                              ; preds = %129, %68
  %135 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %136 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %135, i32 0, i32 0
  %137 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %136, align 8
  %138 = call i32 @release_resource(%struct.simtec_i2c_data* %137)
  %139 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %140 = getelementptr inbounds %struct.simtec_i2c_data, %struct.simtec_i2c_data* %139, i32 0, i32 0
  %141 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %140, align 8
  %142 = call i32 @kfree(%struct.simtec_i2c_data* %141)
  br label %143

143:                                              ; preds = %134, %50, %27
  %144 = load %struct.simtec_i2c_data*, %struct.simtec_i2c_data** %4, align 8
  %145 = call i32 @kfree(%struct.simtec_i2c_data* %144)
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %143, %128, %12
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.simtec_i2c_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.simtec_i2c_data*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.simtec_i2c_data* @request_mem_region(i32, i32, i32) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_6__*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_resource(%struct.simtec_i2c_data*) #1

declare dso_local i32 @kfree(%struct.simtec_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
