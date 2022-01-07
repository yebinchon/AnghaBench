; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_of_device_common.c_of_propagate_archdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_of_device_common.c_of_propagate_archdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { %struct.TYPE_2__, %struct.device_node* }
%struct.TYPE_2__ = type { %struct.dev_archdata }
%struct.dev_archdata = type { i32, i32, i32, i32 }
%struct.device_node = type { %struct.device_node*, %struct.device_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @of_propagate_archdata(%struct.of_device* %0) #0 {
  %2 = alloca %struct.of_device*, align 8
  %3 = alloca %struct.dev_archdata*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device*, align 8
  store %struct.of_device* %0, %struct.of_device** %2, align 8
  %7 = load %struct.of_device*, %struct.of_device** %2, align 8
  %8 = getelementptr inbounds %struct.of_device, %struct.of_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.dev_archdata* %9, %struct.dev_archdata** %3, align 8
  %10 = load %struct.of_device*, %struct.of_device** %2, align 8
  %11 = getelementptr inbounds %struct.of_device, %struct.of_device* %10, i32 0, i32 1
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = getelementptr inbounds %struct.device_node, %struct.device_node* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  br label %16

16:                                               ; preds = %57, %1
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %61

19:                                               ; preds = %16
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call %struct.of_device* @of_find_device_by_node(%struct.device_node* %20)
  store %struct.of_device* %21, %struct.of_device** %6, align 8
  %22 = load %struct.dev_archdata*, %struct.dev_archdata** %3, align 8
  %23 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.of_device*, %struct.of_device** %6, align 8
  %26 = getelementptr inbounds %struct.of_device, %struct.of_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %27, i32 0, i32 3
  store i32 %24, i32* %28, align 4
  %29 = load %struct.dev_archdata*, %struct.dev_archdata** %3, align 8
  %30 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.of_device*, %struct.of_device** %6, align 8
  %33 = getelementptr inbounds %struct.of_device, %struct.of_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %34, i32 0, i32 2
  store i32 %31, i32* %35, align 8
  %36 = load %struct.dev_archdata*, %struct.dev_archdata** %3, align 8
  %37 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.of_device*, %struct.of_device** %6, align 8
  %40 = getelementptr inbounds %struct.of_device, %struct.of_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.dev_archdata*, %struct.dev_archdata** %3, align 8
  %44 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.of_device*, %struct.of_device** %6, align 8
  %47 = getelementptr inbounds %struct.of_device, %struct.of_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.dev_archdata, %struct.dev_archdata* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load %struct.device_node*, %struct.device_node** %5, align 8
  %51 = getelementptr inbounds %struct.device_node, %struct.device_node* %50, i32 0, i32 0
  %52 = load %struct.device_node*, %struct.device_node** %51, align 8
  %53 = icmp ne %struct.device_node* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %19
  %55 = load %struct.of_device*, %struct.of_device** %6, align 8
  call void @of_propagate_archdata(%struct.of_device* %55)
  br label %56

56:                                               ; preds = %54, %19
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = getelementptr inbounds %struct.device_node, %struct.device_node* %58, i32 0, i32 1
  %60 = load %struct.device_node*, %struct.device_node** %59, align 8
  store %struct.device_node* %60, %struct.device_node** %5, align 8
  br label %16

61:                                               ; preds = %16
  ret void
}

declare dso_local %struct.of_device* @of_find_device_by_node(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
