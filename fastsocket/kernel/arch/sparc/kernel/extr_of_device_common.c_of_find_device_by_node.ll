; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_of_device_common.c_of_find_device_by_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_of_device_common.c_of_find_device_by_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { i32 }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@of_platform_bus_type = common dso_local global i32 0, align 4
@node_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.of_device* @of_find_device_by_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.of_device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = load i32, i32* @node_match, align 4
  %7 = call %struct.device* @bus_find_device(i32* @of_platform_bus_type, i32* null, %struct.device_node* %5, i32 %6)
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.of_device* @to_of_device(%struct.device* %11)
  store %struct.of_device* %12, %struct.of_device** %2, align 8
  br label %14

13:                                               ; preds = %1
  store %struct.of_device* null, %struct.of_device** %2, align 8
  br label %14

14:                                               ; preds = %13, %10
  %15 = load %struct.of_device*, %struct.of_device** %2, align 8
  ret %struct.of_device* %15
}

declare dso_local %struct.device* @bus_find_device(i32*, i32*, %struct.device_node*, i32) #1

declare dso_local %struct.of_device* @to_of_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
