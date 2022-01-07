; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_of_device.c_of_device_make_bus_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_of_device.c_of_device_make_bus_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }

@of_device_make_bus_id.bus_no_reg_magic = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@OF_BAD_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%llx.%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.of_device*)* @of_device_make_bus_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @of_device_make_bus_id(%struct.of_device* %0) #0 {
  %2 = alloca %struct.of_device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.of_device* %0, %struct.of_device** %2, align 8
  %7 = load %struct.of_device*, %struct.of_device** %2, align 8
  %8 = getelementptr inbounds %struct.of_device, %struct.of_device* %7, i32 0, i32 1
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %3, align 8
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = call i64* @of_get_property(%struct.device_node* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i64* %11, i64** %4, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = call i64 @of_translate_address(%struct.device_node* %15, i64* %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @OF_BAD_ADDR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.of_device*, %struct.of_device** %2, align 8
  %23 = getelementptr inbounds %struct.of_device, %struct.of_device* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.device_node*, %struct.device_node** %3, align 8
  %26 = getelementptr inbounds %struct.device_node, %struct.device_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_set_name(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %24, i32 %27)
  br label %41

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29, %1
  %31 = call i32 @atomic_add_return(i32 1, i32* @of_device_make_bus_id.bus_no_reg_magic)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.of_device*, %struct.of_device** %2, align 8
  %33 = getelementptr inbounds %struct.of_device, %struct.of_device* %32, i32 0, i32 0
  %34 = load %struct.device_node*, %struct.device_node** %3, align 8
  %35 = getelementptr inbounds %struct.device_node, %struct.device_node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @dev_set_name(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %37, i32 %39)
  br label %41

41:                                               ; preds = %30, %21
  ret void
}

declare dso_local i64* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_translate_address(%struct.device_node*, i64*) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i64, i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
