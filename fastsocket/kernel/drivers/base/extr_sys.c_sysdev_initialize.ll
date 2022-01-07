; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_sys.c_sysdev_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_sys.c_sysdev_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { %struct.TYPE_3__, %struct.sysdev_class* }
%struct.TYPE_3__ = type { i32* }
%struct.sysdev_class = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ktype_sysdev = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysdev_initialize(%struct.sys_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sys_device*, align 8
  %4 = alloca %struct.sysdev_class*, align 8
  store %struct.sys_device* %0, %struct.sys_device** %3, align 8
  %5 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %6 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %5, i32 0, i32 1
  %7 = load %struct.sysdev_class*, %struct.sysdev_class** %6, align 8
  store %struct.sysdev_class* %7, %struct.sysdev_class** %4, align 8
  %8 = load %struct.sysdev_class*, %struct.sysdev_class** %4, align 8
  %9 = icmp ne %struct.sysdev_class* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %15 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %14, i32 0, i32 0
  %16 = call i32 @memset(%struct.TYPE_3__* %15, i32 0, i32 4)
  %17 = load %struct.sysdev_class*, %struct.sysdev_class** %4, align 8
  %18 = getelementptr inbounds %struct.sysdev_class, %struct.sysdev_class* %17, i32 0, i32 0
  %19 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %20 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* %18, i32** %21, align 8
  %22 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %23 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %22, i32 0, i32 0
  %24 = call i32 @kobject_init(%struct.TYPE_3__* %23, i32* @ktype_sysdev)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %13, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @kobject_init(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
