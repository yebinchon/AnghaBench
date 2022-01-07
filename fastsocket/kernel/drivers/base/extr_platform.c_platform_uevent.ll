; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_platform.c_platform_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_platform.c_platform_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"MODALIAS=%s%s\00", align 1
@PLATFORM_MODULE_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @platform_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.kobj_uevent_env*, align 8
  %5 = alloca %struct.platform_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.platform_device* @to_platform_device(%struct.device* %6)
  store %struct.platform_device* %7, %struct.platform_device** %5, align 8
  %8 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %9 = load i32, i32* @PLATFORM_MODULE_PREFIX, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi i32 [ %19, %14 ], [ %23, %20 ]
  %26 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %25)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
