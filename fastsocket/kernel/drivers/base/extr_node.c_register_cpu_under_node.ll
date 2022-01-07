; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_node.c_register_cpu_under_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_node.c_register_cpu_under_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sys_device = type { i32 }

@node_devices = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_cpu_under_node(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sys_device*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @node_online(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.sys_device* @get_cpu_sysdev(i32 %13)
  store %struct.sys_device* %14, %struct.sys_device** %7, align 8
  %15 = load %struct.sys_device*, %struct.sys_device** %7, align 8
  %16 = icmp ne %struct.sys_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %52

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @node_devices, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.sys_device*, %struct.sys_device** %7, align 8
  %26 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %25, i32 0, i32 0
  %27 = load %struct.sys_device*, %struct.sys_device** %7, align 8
  %28 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %27, i32 0, i32 0
  %29 = call i32 @kobject_name(i32* %28)
  %30 = call i32 @sysfs_create_link(i32* %24, i32* %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %52

35:                                               ; preds = %18
  %36 = load %struct.sys_device*, %struct.sys_device** %7, align 8
  %37 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @node_devices, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @node_devices, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @kobject_name(i32* %49)
  %51 = call i32 @sysfs_create_link(i32* %37, i32* %43, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %35, %33, %17, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @node_online(i32) #1

declare dso_local %struct.sys_device* @get_cpu_sysdev(i32) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i32) #1

declare dso_local i32 @kobject_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
