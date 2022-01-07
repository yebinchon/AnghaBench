; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_of_device.c_of_device_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_of_device.c_of_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, %struct.device*, i32* }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@of_release_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.of_device* @of_device_alloc(%struct.device_node* %0, i8* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.of_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.of_device*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.of_device* @kzalloc(i32 40, i32 %9)
  store %struct.of_device* %10, %struct.of_device** %8, align 8
  %11 = load %struct.of_device*, %struct.of_device** %8, align 8
  %12 = icmp ne %struct.of_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.of_device* null, %struct.of_device** %4, align 8
  br label %49

14:                                               ; preds = %3
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call i32 @of_node_get(%struct.device_node* %15)
  %17 = load %struct.of_device*, %struct.of_device** %8, align 8
  %18 = getelementptr inbounds %struct.of_device, %struct.of_device* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.of_device*, %struct.of_device** %8, align 8
  %20 = getelementptr inbounds %struct.of_device, %struct.of_device* %19, i32 0, i32 1
  %21 = load %struct.of_device*, %struct.of_device** %8, align 8
  %22 = getelementptr inbounds %struct.of_device, %struct.of_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store i32* %20, i32** %23, align 8
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load %struct.of_device*, %struct.of_device** %8, align 8
  %26 = getelementptr inbounds %struct.of_device, %struct.of_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store %struct.device* %24, %struct.device** %27, align 8
  %28 = load i32, i32* @of_release_dev, align 4
  %29 = load %struct.of_device*, %struct.of_device** %8, align 8
  %30 = getelementptr inbounds %struct.of_device, %struct.of_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = load %struct.of_device*, %struct.of_device** %8, align 8
  %34 = getelementptr inbounds %struct.of_device, %struct.of_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store %struct.device_node* %32, %struct.device_node** %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %14
  %40 = load %struct.of_device*, %struct.of_device** %8, align 8
  %41 = getelementptr inbounds %struct.of_device, %struct.of_device* %40, i32 0, i32 0
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @dev_set_name(%struct.TYPE_4__* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %47

44:                                               ; preds = %14
  %45 = load %struct.of_device*, %struct.of_device** %8, align 8
  %46 = call i32 @of_device_make_bus_id(%struct.of_device* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.of_device*, %struct.of_device** %8, align 8
  store %struct.of_device* %48, %struct.of_device** %4, align 8
  br label %49

49:                                               ; preds = %47, %13
  %50 = load %struct.of_device*, %struct.of_device** %4, align 8
  ret %struct.of_device* %50
}

declare dso_local %struct.of_device* @kzalloc(i32, i32) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @of_device_make_bus_id(%struct.of_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
