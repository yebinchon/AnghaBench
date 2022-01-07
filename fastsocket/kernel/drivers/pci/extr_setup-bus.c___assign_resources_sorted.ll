; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c___assign_resources_sorted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c___assign_resources_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }
%struct.resource_list_x = type { i32 }

@resource_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource_list*, %struct.resource_list_x*, %struct.resource_list_x*)* @__assign_resources_sorted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__assign_resources_sorted(%struct.resource_list* %0, %struct.resource_list_x* %1, %struct.resource_list_x* %2) #0 {
  %4 = alloca %struct.resource_list*, align 8
  %5 = alloca %struct.resource_list_x*, align 8
  %6 = alloca %struct.resource_list_x*, align 8
  store %struct.resource_list* %0, %struct.resource_list** %4, align 8
  store %struct.resource_list_x* %1, %struct.resource_list_x** %5, align 8
  store %struct.resource_list_x* %2, %struct.resource_list_x** %6, align 8
  %7 = load %struct.resource_list*, %struct.resource_list** %4, align 8
  %8 = load %struct.resource_list_x*, %struct.resource_list_x** %6, align 8
  %9 = call i32 @assign_requested_resources_sorted(%struct.resource_list* %7, %struct.resource_list_x* %8)
  %10 = load %struct.resource_list_x*, %struct.resource_list_x** %5, align 8
  %11 = icmp ne %struct.resource_list_x* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.resource_list_x*, %struct.resource_list_x** %5, align 8
  %14 = load %struct.resource_list*, %struct.resource_list** %4, align 8
  %15 = call i32 @adjust_resources_sorted(%struct.resource_list_x* %13, %struct.resource_list* %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @resource_list, align 4
  %18 = load %struct.resource_list*, %struct.resource_list** %4, align 8
  %19 = call i32 @free_list(i32 %17, %struct.resource_list* %18)
  ret void
}

declare dso_local i32 @assign_requested_resources_sorted(%struct.resource_list*, %struct.resource_list_x*) #1

declare dso_local i32 @adjust_resources_sorted(%struct.resource_list_x*, %struct.resource_list*) #1

declare dso_local i32 @free_list(i32, %struct.resource_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
