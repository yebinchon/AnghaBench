; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_sys.c_sysdev_remove_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_sys.c_sysdev_remove_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }
%struct.sysdev_attribute = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysdev_remove_file(%struct.sys_device* %0, %struct.sysdev_attribute* %1) #0 {
  %3 = alloca %struct.sys_device*, align 8
  %4 = alloca %struct.sysdev_attribute*, align 8
  store %struct.sys_device* %0, %struct.sys_device** %3, align 8
  store %struct.sysdev_attribute* %1, %struct.sysdev_attribute** %4, align 8
  %5 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %6 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %5, i32 0, i32 0
  %7 = load %struct.sysdev_attribute*, %struct.sysdev_attribute** %4, align 8
  %8 = getelementptr inbounds %struct.sysdev_attribute, %struct.sysdev_attribute* %7, i32 0, i32 0
  %9 = call i32 @sysfs_remove_file(i32* %6, i32* %8)
  ret void
}

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
