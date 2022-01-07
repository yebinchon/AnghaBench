; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_of_platform.c_of_platform_device_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_of_platform.c_of_platform_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@of_platform_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.of_device* @of_platform_device_create(%struct.device_node* %0, i8* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.of_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.of_device*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = call %struct.of_device* @of_device_alloc(%struct.device_node* %9, i8* %10, %struct.device* %11)
  store %struct.of_device* %12, %struct.of_device** %8, align 8
  %13 = load %struct.of_device*, %struct.of_device** %8, align 8
  %14 = icmp ne %struct.of_device* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.of_device* null, %struct.of_device** %4, align 8
  br label %30

16:                                               ; preds = %3
  %17 = load %struct.of_device*, %struct.of_device** %8, align 8
  %18 = getelementptr inbounds %struct.of_device, %struct.of_device* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  %19 = load %struct.of_device*, %struct.of_device** %8, align 8
  %20 = getelementptr inbounds %struct.of_device, %struct.of_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* @of_platform_bus_type, i32** %21, align 8
  %22 = load %struct.of_device*, %struct.of_device** %8, align 8
  %23 = call i64 @of_device_register(%struct.of_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.of_device*, %struct.of_device** %8, align 8
  %27 = call i32 @of_device_free(%struct.of_device* %26)
  store %struct.of_device* null, %struct.of_device** %4, align 8
  br label %30

28:                                               ; preds = %16
  %29 = load %struct.of_device*, %struct.of_device** %8, align 8
  store %struct.of_device* %29, %struct.of_device** %4, align 8
  br label %30

30:                                               ; preds = %28, %25, %15
  %31 = load %struct.of_device*, %struct.of_device** %4, align 8
  ret %struct.of_device* %31
}

declare dso_local %struct.of_device* @of_device_alloc(%struct.device_node*, i8*, %struct.device*) #1

declare dso_local i64 @of_device_register(%struct.of_device*) #1

declare dso_local i32 @of_device_free(%struct.of_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
