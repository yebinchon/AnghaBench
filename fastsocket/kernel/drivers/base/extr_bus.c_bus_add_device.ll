; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_bus_add_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_bus_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_13__*, i32, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.bus_type = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"bus: '%s': add device %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.bus_type*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %9 = call %struct.bus_type* @bus_get(%struct.TYPE_13__* %8)
  store %struct.bus_type* %9, %struct.bus_type** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %11 = icmp ne %struct.bus_type* %10, null
  br i1 %11, label %12, label %70

12:                                               ; preds = %1
  %13 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %14 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i8* @dev_name(%struct.device* %16)
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %17)
  %19 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @device_add_attrs(%struct.bus_type* %19, %struct.device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %89

25:                                               ; preds = %12
  %26 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %27 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 1
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i8* @dev_name(%struct.device* %34)
  %36 = call i32 @sysfs_create_link(i32* %31, i32* %33, i8* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %85

40:                                               ; preds = %25
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 1
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @sysfs_create_link(i32* %42, i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %75

54:                                               ; preds = %40
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = call i32 @make_deprecated_bus_links(%struct.device* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %71

60:                                               ; preds = %54
  %61 = load %struct.device*, %struct.device** %3, align 8
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %66 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = call i32 @klist_add_tail(i32* %64, i32* %68)
  br label %70

70:                                               ; preds = %60, %1
  store i32 0, i32* %2, align 4
  br label %95

71:                                               ; preds = %59
  %72 = load %struct.device*, %struct.device** %3, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 1
  %74 = call i32 @sysfs_remove_link(i32* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %53
  %76 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %77 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.device*, %struct.device** %3, align 8
  %83 = call i8* @dev_name(%struct.device* %82)
  %84 = call i32 @sysfs_remove_link(i32* %81, i8* %83)
  br label %85

85:                                               ; preds = %75, %39
  %86 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %87 = load %struct.device*, %struct.device** %3, align 8
  %88 = call i32 @device_remove_attrs(%struct.bus_type* %86, %struct.device* %87)
  br label %89

89:                                               ; preds = %85, %24
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = getelementptr inbounds %struct.device, %struct.device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = call i32 @bus_put(%struct.TYPE_13__* %92)
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %89, %70
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.bus_type* @bus_get(%struct.TYPE_13__*) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @device_add_attrs(%struct.bus_type*, %struct.device*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @make_deprecated_bus_links(%struct.device*) #1

declare dso_local i32 @klist_add_tail(i32*, i32*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @device_remove_attrs(%struct.bus_type*, %struct.device*) #1

declare dso_local i32 @bus_put(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
