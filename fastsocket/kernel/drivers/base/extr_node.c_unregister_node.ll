; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_node.c_unregister_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_node.c_unregister_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@attr_cpumap = common dso_local global i32 0, align 4
@attr_cpulist = common dso_local global i32 0, align 4
@attr_meminfo = common dso_local global i32 0, align 4
@attr_numastat = common dso_local global i32 0, align 4
@attr_distance = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_node(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  %5 = call i32 @sysdev_remove_file(i32* %4, i32* @attr_cpumap)
  %6 = load %struct.node*, %struct.node** %2, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  %8 = call i32 @sysdev_remove_file(i32* %7, i32* @attr_cpulist)
  %9 = load %struct.node*, %struct.node** %2, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 0
  %11 = call i32 @sysdev_remove_file(i32* %10, i32* @attr_meminfo)
  %12 = load %struct.node*, %struct.node** %2, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 0
  %14 = call i32 @sysdev_remove_file(i32* %13, i32* @attr_numastat)
  %15 = load %struct.node*, %struct.node** %2, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = call i32 @sysdev_remove_file(i32* %16, i32* @attr_distance)
  %18 = load %struct.node*, %struct.node** %2, align 8
  %19 = call i32 @scan_unevictable_unregister_node(%struct.node* %18)
  %20 = load %struct.node*, %struct.node** %2, align 8
  %21 = call i32 @hugetlb_unregister_node(%struct.node* %20)
  %22 = load %struct.node*, %struct.node** %2, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 0
  %24 = call i32 @sysdev_unregister(i32* %23)
  ret void
}

declare dso_local i32 @sysdev_remove_file(i32*, i32*) #1

declare dso_local i32 @scan_unevictable_unregister_node(%struct.node*) #1

declare dso_local i32 @hugetlb_unregister_node(%struct.node*) #1

declare dso_local i32 @sysdev_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
