; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_klist_children_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_klist_children_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klist_node = type { i32 }
%struct.device_private = type { %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.klist_node*)* @klist_children_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @klist_children_get(%struct.klist_node* %0) #0 {
  %2 = alloca %struct.klist_node*, align 8
  %3 = alloca %struct.device_private*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.klist_node* %0, %struct.klist_node** %2, align 8
  %5 = load %struct.klist_node*, %struct.klist_node** %2, align 8
  %6 = call %struct.device_private* @to_device_private_parent(%struct.klist_node* %5)
  store %struct.device_private* %6, %struct.device_private** %3, align 8
  %7 = load %struct.device_private*, %struct.device_private** %3, align 8
  %8 = getelementptr inbounds %struct.device_private, %struct.device_private* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @get_device(%struct.device* %10)
  ret void
}

declare dso_local %struct.device_private* @to_device_private_parent(%struct.klist_node*) #1

declare dso_local i32 @get_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
