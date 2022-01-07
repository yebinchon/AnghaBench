; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_remove_class_symlinks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_remove_class_symlinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_7__ = type { %struct.TYPE_11__ }

@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @device_remove_class_symlinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_remove_class_symlinks(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load %struct.device*, %struct.device** %2, align 8
  %4 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 1
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %6 = icmp ne %struct.TYPE_10__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %35

8:                                                ; preds = %1
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call i64 @device_is_not_partition(%struct.device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.device*, %struct.device** %2, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = call i32 @sysfs_remove_link(%struct.TYPE_11__* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %13, %8
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = call i8* @dev_name(%struct.device* %29)
  %31 = call i32 @sysfs_remove_link(%struct.TYPE_11__* %28, i8* %30)
  %32 = load %struct.device*, %struct.device** %2, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = call i32 @sysfs_remove_link(%struct.TYPE_11__* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %21, %7
  ret void
}

declare dso_local i64 @device_is_not_partition(%struct.device*) #1

declare dso_local i32 @sysfs_remove_link(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
