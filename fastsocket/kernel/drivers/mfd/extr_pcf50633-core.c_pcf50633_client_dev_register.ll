; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-core.c_pcf50633_client_dev_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-core.c_pcf50633_client_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pcf50633_subdev_pdata = type { %struct.pcf50633* }

@.str = private unnamed_addr constant [23 x i8] c"Falied to allocate %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error allocating subdev pdata\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to register %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcf50633*, i8*, %struct.platform_device**)* @pcf50633_client_dev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcf50633_client_dev_register(%struct.pcf50633* %0, i8* %1, %struct.platform_device** %2) #0 {
  %4 = alloca %struct.pcf50633*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.platform_device**, align 8
  %7 = alloca %struct.pcf50633_subdev_pdata*, align 8
  %8 = alloca i32, align 4
  store %struct.pcf50633* %0, %struct.pcf50633** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.platform_device** %2, %struct.platform_device*** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.platform_device* @platform_device_alloc(i8* %9, i32 -1)
  %11 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  store %struct.platform_device* %10, %struct.platform_device** %11, align 8
  %12 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %14 = icmp ne %struct.platform_device* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %17 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i32, i8*, ...) @dev_err(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %65

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.pcf50633_subdev_pdata* @kmalloc(i32 8, i32 %22)
  store %struct.pcf50633_subdev_pdata* %23, %struct.pcf50633_subdev_pdata** %7, align 8
  %24 = load %struct.pcf50633_subdev_pdata*, %struct.pcf50633_subdev_pdata** %7, align 8
  %25 = icmp ne %struct.pcf50633_subdev_pdata* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %28 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %31, align 8
  %33 = call i32 @platform_device_put(%struct.platform_device* %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %36 = load %struct.pcf50633_subdev_pdata*, %struct.pcf50633_subdev_pdata** %7, align 8
  %37 = getelementptr inbounds %struct.pcf50633_subdev_pdata, %struct.pcf50633_subdev_pdata* %36, i32 0, i32 0
  store %struct.pcf50633* %35, %struct.pcf50633** %37, align 8
  %38 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %38, align 8
  %40 = load %struct.pcf50633_subdev_pdata*, %struct.pcf50633_subdev_pdata** %7, align 8
  %41 = call i32 @platform_device_add_data(%struct.platform_device* %39, %struct.pcf50633_subdev_pdata* %40, i32 8)
  %42 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %43 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %45, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %49, align 8
  %51 = call i32 @platform_device_add(%struct.platform_device* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %34
  %55 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %56 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %58, i32 %59)
  %61 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %61, align 8
  %63 = call i32 @platform_device_put(%struct.platform_device* %62)
  %64 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  store %struct.platform_device* null, %struct.platform_device** %64, align 8
  br label %65

65:                                               ; preds = %15, %54, %34
  ret void
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.pcf50633_subdev_pdata* @kmalloc(i32, i32) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.pcf50633_subdev_pdata*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
