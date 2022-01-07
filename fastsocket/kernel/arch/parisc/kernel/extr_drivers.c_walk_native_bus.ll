; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_walk_native_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_walk_native_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hardware_path = type { i32 }
%struct.parisc_device = type { i32 }

@MAX_NATIVE_DEVICES = common dso_local global i32 0, align 4
@NATIVE_DEVICE_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.device*)* @walk_native_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_native_bus(i64 %0, i64 %1, %struct.device* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hardware_path, align 4
  %11 = alloca %struct.parisc_device*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @get_node_path(%struct.device* %13, %struct.hardware_path* %10)
  br label %15

15:                                               ; preds = %55, %3
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MAX_NATIVE_DEVICES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  %22 = call %struct.parisc_device* @find_device_by_addr(i64 %21)
  store %struct.parisc_device* %22, %struct.parisc_device** %11, align 8
  %23 = load %struct.parisc_device*, %struct.parisc_device** %11, align 8
  %24 = icmp ne %struct.parisc_device* %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %10, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call %struct.parisc_device* @alloc_pa_dev(i64 %28, %struct.hardware_path* %10)
  store %struct.parisc_device* %29, %struct.parisc_device** %11, align 8
  %30 = load %struct.parisc_device*, %struct.parisc_device** %11, align 8
  %31 = icmp ne %struct.parisc_device* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %41

33:                                               ; preds = %25
  %34 = load %struct.parisc_device*, %struct.parisc_device** %11, align 8
  %35 = call i32 @register_parisc_device(%struct.parisc_device* %34)
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %20
  %39 = load %struct.parisc_device*, %struct.parisc_device** %11, align 8
  %40 = call i32 @walk_lower_bus(%struct.parisc_device* %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load i64, i64* @NATIVE_DEVICE_OFFSET, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %9, align 8
  br label %16

47:                                               ; preds = %16
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ult i64 %52, %53
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %15, label %57

57:                                               ; preds = %55
  ret void
}

declare dso_local i32 @get_node_path(%struct.device*, %struct.hardware_path*) #1

declare dso_local %struct.parisc_device* @find_device_by_addr(i64) #1

declare dso_local %struct.parisc_device* @alloc_pa_dev(i64, %struct.hardware_path*) #1

declare dso_local i32 @register_parisc_device(%struct.parisc_device*) #1

declare dso_local i32 @walk_lower_bus(%struct.parisc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
