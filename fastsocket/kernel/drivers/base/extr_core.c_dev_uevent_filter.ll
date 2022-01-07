; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_dev_uevent_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_dev_uevent_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_type = type { i32 }
%struct.kset = type { i32 }
%struct.kobject = type { i32 }
%struct.device = type { i64, i64 }

@device_ktype = common dso_local global %struct.kobj_type zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kset*, %struct.kobject*)* @dev_uevent_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_uevent_filter(%struct.kset* %0, %struct.kobject* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kset*, align 8
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_type*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.kset* %0, %struct.kset** %4, align 8
  store %struct.kobject* %1, %struct.kobject** %5, align 8
  %8 = load %struct.kobject*, %struct.kobject** %5, align 8
  %9 = call %struct.kobj_type* @get_ktype(%struct.kobject* %8)
  store %struct.kobj_type* %9, %struct.kobj_type** %6, align 8
  %10 = load %struct.kobj_type*, %struct.kobj_type** %6, align 8
  %11 = icmp eq %struct.kobj_type* %10, @device_ktype
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.kobject*, %struct.kobject** %5, align 8
  %14 = call %struct.device* @to_dev(%struct.kobject* %13)
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %28

20:                                               ; preds = %12
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %28

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.kobj_type* @get_ktype(%struct.kobject*) #1

declare dso_local %struct.device* @to_dev(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
