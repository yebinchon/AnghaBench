; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_microcode_core.c_mc_sysdev_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_microcode_core.c_mc_sysdev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"microcode: CPU%d removed\0A\00", align 1
@mc_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*)* @mc_sysdev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc_sysdev_remove(%struct.sys_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sys_device*, align 8
  %4 = alloca i32, align 4
  store %struct.sys_device* %0, %struct.sys_device** %3, align 8
  %5 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %6 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @cpu_online(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @microcode_fini_cpu(i32 %15)
  %17 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %18 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %17, i32 0, i32 1
  %19 = call i32 @sysfs_remove_group(i32* %18, i32* @mc_attr_group)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @microcode_fini_cpu(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
