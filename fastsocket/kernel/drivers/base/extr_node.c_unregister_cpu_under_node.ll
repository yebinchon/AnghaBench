; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_node.c_unregister_cpu_under_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_node.c_unregister_cpu_under_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sys_device = type { i32 }

@node_devices = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_cpu_under_node(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sys_device*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @node_online(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.sys_device* @get_cpu_sysdev(i32 %12)
  store %struct.sys_device* %13, %struct.sys_device** %6, align 8
  %14 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %15 = icmp ne %struct.sys_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %38

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @node_devices, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %25 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %24, i32 0, i32 0
  %26 = call i32 @kobject_name(i32* %25)
  %27 = call i32 @sysfs_remove_link(i32* %23, i32 %26)
  %28 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %29 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @node_devices, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @kobject_name(i32* %35)
  %37 = call i32 @sysfs_remove_link(i32* %29, i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %17, %16, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @node_online(i32) #1

declare dso_local %struct.sys_device* @get_cpu_sysdev(i32) #1

declare dso_local i32 @sysfs_remove_link(i32*, i32) #1

declare dso_local i32 @kobject_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
