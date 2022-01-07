; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_add_class_symlinks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_add_class_symlinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_11__, %struct.TYPE_10__*, %struct.device*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }

@.str = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @device_add_class_symlinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_add_class_symlinks(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = call i32 @sysfs_create_link(%struct.TYPE_11__* %12, %struct.TYPE_11__* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  br label %77

24:                                               ; preds = %10
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i8* @dev_name(%struct.device* %34)
  %36 = call i32 @sysfs_create_link(%struct.TYPE_11__* %31, %struct.TYPE_11__* %33, i8* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %73

40:                                               ; preds = %24
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 2
  %43 = load %struct.device*, %struct.device** %42, align 8
  %44 = icmp ne %struct.device* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = call i64 @device_is_not_partition(%struct.device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 2
  %54 = load %struct.device*, %struct.device** %53, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = call i32 @sysfs_create_link(%struct.TYPE_11__* %51, %struct.TYPE_11__* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %62

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %45, %40
  store i32 0, i32* %2, align 4
  br label %79

62:                                               ; preds = %59
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.device*, %struct.device** %3, align 8
  %71 = call i8* @dev_name(%struct.device* %70)
  %72 = call i32 @sysfs_remove_link(%struct.TYPE_11__* %69, i8* %71)
  br label %73

73:                                               ; preds = %62, %39
  %74 = load %struct.device*, %struct.device** %3, align 8
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 0
  %76 = call i32 @sysfs_remove_link(%struct.TYPE_11__* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %23
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %61, %9
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @sysfs_create_link(%struct.TYPE_11__*, %struct.TYPE_11__*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i64 @device_is_not_partition(%struct.device*) #1

declare dso_local i32 @sysfs_remove_link(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
