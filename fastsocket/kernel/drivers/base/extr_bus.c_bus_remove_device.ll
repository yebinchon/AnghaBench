; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_bus_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_bus_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"bus: '%s': remove device %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bus_remove_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load %struct.device*, %struct.device** %2, align 8
  %4 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 0
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  br i1 %6, label %7, label %56

7:                                                ; preds = %1
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 2
  %10 = call i32 @sysfs_remove_link(i32* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @remove_deprecated_bus_links(%struct.device* %11)
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = call i8* @dev_name(%struct.device* %21)
  %23 = call i32 @sysfs_remove_link(i32* %20, i8* %22)
  %24 = load %struct.device*, %struct.device** %2, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load %struct.device*, %struct.device** %2, align 8
  %28 = call i32 @device_remove_attrs(%struct.TYPE_9__* %26, %struct.device* %27)
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = call i64 @klist_node_attached(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %7
  %36 = load %struct.device*, %struct.device** %2, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = call i32 @klist_del(i32* %39)
  br label %41

41:                                               ; preds = %35, %7
  %42 = load %struct.device*, %struct.device** %2, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.device*, %struct.device** %2, align 8
  %48 = call i8* @dev_name(%struct.device* %47)
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* %48)
  %50 = load %struct.device*, %struct.device** %2, align 8
  %51 = call i32 @device_release_driver(%struct.device* %50)
  %52 = load %struct.device*, %struct.device** %2, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = call i32 @bus_put(%struct.TYPE_9__* %54)
  br label %56

56:                                               ; preds = %41, %1
  ret void
}

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @remove_deprecated_bus_links(%struct.device*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @device_remove_attrs(%struct.TYPE_9__*, %struct.device*) #1

declare dso_local i64 @klist_node_attached(i32*) #1

declare dso_local i32 @klist_del(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i32 @device_release_driver(%struct.device*) #1

declare dso_local i32 @bus_put(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
