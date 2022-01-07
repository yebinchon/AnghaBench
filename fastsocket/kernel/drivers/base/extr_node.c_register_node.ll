; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_node.c_register_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_node.c_register_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@node_class = common dso_local global i32 0, align 4
@attr_cpumap = common dso_local global i32 0, align 4
@attr_cpulist = common dso_local global i32 0, align 4
@attr_meminfo = common dso_local global i32 0, align 4
@attr_numastat = common dso_local global i32 0, align 4
@attr_distance = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_node(%struct.node* %0, i32 %1, %struct.node* %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  %7 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.node* %2, %struct.node** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.node*, %struct.node** %4, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.node*, %struct.node** %4, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32* @node_class, i32** %14, align 8
  %15 = load %struct.node*, %struct.node** %4, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = call i32 @sysdev_register(%struct.TYPE_3__* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %3
  %21 = load %struct.node*, %struct.node** %4, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 0
  %23 = call i32 @sysdev_create_file(%struct.TYPE_3__* %22, i32* @attr_cpumap)
  %24 = load %struct.node*, %struct.node** %4, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 0
  %26 = call i32 @sysdev_create_file(%struct.TYPE_3__* %25, i32* @attr_cpulist)
  %27 = load %struct.node*, %struct.node** %4, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 0
  %29 = call i32 @sysdev_create_file(%struct.TYPE_3__* %28, i32* @attr_meminfo)
  %30 = load %struct.node*, %struct.node** %4, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 0
  %32 = call i32 @sysdev_create_file(%struct.TYPE_3__* %31, i32* @attr_numastat)
  %33 = load %struct.node*, %struct.node** %4, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 0
  %35 = call i32 @sysdev_create_file(%struct.TYPE_3__* %34, i32* @attr_distance)
  %36 = load %struct.node*, %struct.node** %4, align 8
  %37 = call i32 @scan_unevictable_register_node(%struct.node* %36)
  %38 = load %struct.node*, %struct.node** %4, align 8
  %39 = call i32 @hugetlb_register_node(%struct.node* %38)
  %40 = load %struct.node*, %struct.node** %4, align 8
  %41 = call i32 @compaction_register_node(%struct.node* %40)
  br label %42

42:                                               ; preds = %20, %3
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @sysdev_register(%struct.TYPE_3__*) #1

declare dso_local i32 @sysdev_create_file(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @scan_unevictable_register_node(%struct.node*) #1

declare dso_local i32 @hugetlb_register_node(%struct.node*) #1

declare dso_local i32 @compaction_register_node(%struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
