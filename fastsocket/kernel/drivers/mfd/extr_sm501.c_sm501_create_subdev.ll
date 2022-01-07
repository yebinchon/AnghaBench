; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_create_subdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_create_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, i32, %struct.TYPE_2__, %struct.resource*, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.resource = type { i32 }
%struct.sm501_devdata = type { i32, i32 }
%struct.sm501_device = type { %struct.platform_device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sm501_device_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device* (%struct.sm501_devdata*, i8*, i32, i32)* @sm501_create_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device* @sm501_create_subdev(%struct.sm501_devdata* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.sm501_devdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sm501_device*, align 8
  store %struct.sm501_devdata* %0, %struct.sm501_devdata** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = add i64 48, %13
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = add i64 %14, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sm501_device* @kzalloc(i32 %18, i32 %19)
  store %struct.sm501_device* %20, %struct.sm501_device** %10, align 8
  %21 = load %struct.sm501_device*, %struct.sm501_device** %10, align 8
  %22 = icmp ne %struct.sm501_device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store %struct.platform_device* null, %struct.platform_device** %5, align 8
  br label %74

24:                                               ; preds = %4
  %25 = load i32, i32* @sm501_device_release, align 4
  %26 = load %struct.sm501_device*, %struct.sm501_device** %10, align 8
  %27 = getelementptr inbounds %struct.sm501_device, %struct.sm501_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %25, i32* %29, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.sm501_device*, %struct.sm501_device** %10, align 8
  %32 = getelementptr inbounds %struct.sm501_device, %struct.sm501_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %35 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sm501_device*, %struct.sm501_device** %10, align 8
  %38 = getelementptr inbounds %struct.sm501_device, %struct.sm501_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 4
  store i32 %36, i32* %39, align 8
  %40 = load %struct.sm501_devdata*, %struct.sm501_devdata** %6, align 8
  %41 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sm501_device*, %struct.sm501_device** %10, align 8
  %44 = getelementptr inbounds %struct.sm501_device, %struct.sm501_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %24
  %50 = load %struct.sm501_device*, %struct.sm501_device** %10, align 8
  %51 = getelementptr inbounds %struct.sm501_device, %struct.sm501_device* %50, i64 1
  %52 = bitcast %struct.sm501_device* %51 to %struct.resource*
  %53 = load %struct.sm501_device*, %struct.sm501_device** %10, align 8
  %54 = getelementptr inbounds %struct.sm501_device, %struct.sm501_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 3
  store %struct.resource* %52, %struct.resource** %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.sm501_device*, %struct.sm501_device** %10, align 8
  %58 = getelementptr inbounds %struct.sm501_device, %struct.sm501_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  br label %60

60:                                               ; preds = %49, %24
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.sm501_device*, %struct.sm501_device** %10, align 8
  %65 = getelementptr inbounds %struct.sm501_device, %struct.sm501_device* %64, i64 1
  %66 = bitcast %struct.sm501_device* %65 to i8*
  %67 = load %struct.sm501_device*, %struct.sm501_device** %10, align 8
  %68 = getelementptr inbounds %struct.sm501_device, %struct.sm501_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i8* %66, i8** %70, align 8
  br label %71

71:                                               ; preds = %63, %60
  %72 = load %struct.sm501_device*, %struct.sm501_device** %10, align 8
  %73 = getelementptr inbounds %struct.sm501_device, %struct.sm501_device* %72, i32 0, i32 0
  store %struct.platform_device* %73, %struct.platform_device** %5, align 8
  br label %74

74:                                               ; preds = %71, %23
  %75 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  ret %struct.platform_device* %75
}

declare dso_local %struct.sm501_device* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
