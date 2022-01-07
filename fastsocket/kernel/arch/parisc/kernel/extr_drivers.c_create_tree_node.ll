; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_create_tree_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_create_tree_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parisc_device = type { i8, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32, i32*, %struct.device* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HPHW_FAULTY = common dso_local global i32 0, align 4
@parisc_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.parisc_device* @create_tree_node(i8 signext %0, %struct.device* %1) #0 {
  %3 = alloca %struct.parisc_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.parisc_device*, align 8
  store i8 %0, i8* %4, align 1
  store %struct.device* %1, %struct.device** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.parisc_device* @kzalloc(i32 48, i32 %7)
  store %struct.parisc_device* %8, %struct.parisc_device** %6, align 8
  %9 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %10 = icmp ne %struct.parisc_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.parisc_device* null, %struct.parisc_device** %3, align 8
  br label %51

12:                                               ; preds = %2
  %13 = load i8, i8* %4, align 1
  %14 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %15 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %14, i32 0, i32 0
  store i8 %13, i8* %15, align 8
  %16 = load i32, i32* @HPHW_FAULTY, align 4
  %17 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %18 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %22 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store %struct.device* %20, %struct.device** %23, align 8
  %24 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %25 = call i32 @setup_bus_id(%struct.parisc_device* %24)
  %26 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %27 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32* @parisc_bus_type, i32** %28, align 8
  %29 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %30 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %29, i32 0, i32 1
  store i32 -1, i32* %30, align 4
  %31 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %32 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %31, i32 0, i32 1
  %33 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %34 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %37 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %40 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %43 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %42, i32 0, i32 2
  %44 = call i64 @device_register(%struct.TYPE_4__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %12
  %47 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %48 = call i32 @kfree(%struct.parisc_device* %47)
  store %struct.parisc_device* null, %struct.parisc_device** %3, align 8
  br label %51

49:                                               ; preds = %12
  %50 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  store %struct.parisc_device* %50, %struct.parisc_device** %3, align 8
  br label %51

51:                                               ; preds = %49, %46, %11
  %52 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  ret %struct.parisc_device* %52
}

declare dso_local %struct.parisc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @setup_bus_id(%struct.parisc_device*) #1

declare dso_local i64 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.parisc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
