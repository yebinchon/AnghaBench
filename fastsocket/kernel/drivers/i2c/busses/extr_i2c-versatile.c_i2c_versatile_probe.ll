; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-versatile.c_i2c_versatile_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-versatile.c_i2c_versatile_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.i2c_versatile* }
%struct.i2c_versatile = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.platform_device = type { i64, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"versatile-i2c\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCL = common dso_local global i32 0, align 4
@SDA = common dso_local global i32 0, align 4
@I2C_CONTROLS = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Versatile I2C adapter\00", align 1
@i2c_versatile_algo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_versatile_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_versatile_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2c_versatile*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 %8, i32 0)
  store %struct.resource* %9, %struct.resource** %5, align 8
  %10 = load %struct.resource*, %struct.resource** %5, align 8
  %11 = icmp ne %struct.resource* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  br label %127

15:                                               ; preds = %1
  %16 = load %struct.resource*, %struct.resource** %5, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = call i32 @resource_size(%struct.resource* %19)
  %21 = call i32 @request_mem_region(i32 %18, i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %127

26:                                               ; preds = %15
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.i2c_versatile* @kzalloc(i32 48, i32 %27)
  store %struct.i2c_versatile* %28, %struct.i2c_versatile** %4, align 8
  %29 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %30 = icmp ne %struct.i2c_versatile* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %120

34:                                               ; preds = %26
  %35 = load %struct.resource*, %struct.resource** %5, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = call i32 @resource_size(%struct.resource* %38)
  %40 = call i64 @ioremap(i32 %37, i32 %39)
  %41 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %117

50:                                               ; preds = %34
  %51 = load i32, i32* @SCL, align 4
  %52 = load i32, i32* @SDA, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @I2C_CONTROLS, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load i32, i32* @THIS_MODULE, align 4
  %61 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 4
  store i32 %60, i32* %63, align 4
  %64 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @strlcpy(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %69 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %69, i32 0, i32 2
  %71 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 1
  %76 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32* %75, i32** %79, align 8
  %80 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %80, i32 0, i32 2
  %82 = bitcast %struct.TYPE_6__* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 bitcast (%struct.TYPE_6__* @i2c_versatile_algo to i8*), i64 8, i1 false)
  %83 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %84 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store %struct.i2c_versatile* %83, %struct.i2c_versatile** %86, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %50
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %98, i32 0, i32 1
  %100 = call i32 @i2c_bit_add_numbered_bus(%struct.TYPE_7__* %99)
  store i32 %100, i32* %6, align 4
  br label %105

101:                                              ; preds = %50
  %102 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %102, i32 0, i32 1
  %104 = call i32 @i2c_bit_add_bus(%struct.TYPE_7__* %103)
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %101, %91
  %106 = load i32, i32* %6, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %111 = call i32 @platform_set_drvdata(%struct.platform_device* %109, %struct.i2c_versatile* %110)
  store i32 0, i32* %2, align 4
  br label %129

112:                                              ; preds = %105
  %113 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %114 = getelementptr inbounds %struct.i2c_versatile, %struct.i2c_versatile* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @iounmap(i64 %115)
  br label %117

117:                                              ; preds = %112, %47
  %118 = load %struct.i2c_versatile*, %struct.i2c_versatile** %4, align 8
  %119 = call i32 @kfree(%struct.i2c_versatile* %118)
  br label %120

120:                                              ; preds = %117, %31
  %121 = load %struct.resource*, %struct.resource** %5, align 8
  %122 = getelementptr inbounds %struct.resource, %struct.resource* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.resource*, %struct.resource** %5, align 8
  %125 = call i32 @resource_size(%struct.resource* %124)
  %126 = call i32 @release_mem_region(i32 %123, i32 %125)
  br label %127

127:                                              ; preds = %120, %23, %12
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %108
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.i2c_versatile* @kzalloc(i32, i32) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_bit_add_numbered_bus(%struct.TYPE_7__*) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_7__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_versatile*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.i2c_versatile*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
