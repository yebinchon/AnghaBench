; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_sys.c_sysdev_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_sys.c_sysdev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { %struct.sysdev_class* }
%struct.sysdev_class = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Registering sys device of class '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysdev_register(%struct.sys_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sys_device*, align 8
  %4 = alloca %struct.sysdev_class*, align 8
  store %struct.sys_device* %0, %struct.sys_device** %3, align 8
  %5 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %6 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %5, i32 0, i32 0
  %7 = load %struct.sysdev_class*, %struct.sysdev_class** %6, align 8
  store %struct.sysdev_class* %7, %struct.sysdev_class** %4, align 8
  %8 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %9 = call i64 @sysdev_initialize(%struct.sys_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.sysdev_class*, %struct.sysdev_class** %4, align 8
  %16 = getelementptr inbounds %struct.sysdev_class, %struct.sysdev_class* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @kobject_name(i32* %17)
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %21 = call i32 @sysdev_add(%struct.sys_device* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %14, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @sysdev_initialize(%struct.sys_device*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kobject_name(i32*) #1

declare dso_local i32 @sysdev_add(%struct.sys_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
