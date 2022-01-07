; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_microcode_core.c_mc_sysdev_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_microcode_core.c_mc_sysdev_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucode_cpu_info = type { i64, i64 }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.sys_device = type { i32 }

@ucode_cpu_info = common dso_local global %struct.ucode_cpu_info* null, align 8
@microcode_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*)* @mc_sysdev_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc_sysdev_resume(%struct.sys_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sys_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucode_cpu_info*, align 8
  store %struct.sys_device* %0, %struct.sys_device** %3, align 8
  %6 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %7 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** @ucode_cpu_info, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %9, i64 %11
  store %struct.ucode_cpu_info* %12, %struct.ucode_cpu_info** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (...) @smp_processor_id()
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %5, align 8
  %19 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %5, align 8
  %24 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @microcode_ops, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 %30(i32 %31)
  br label %33

33:                                               ; preds = %27, %22, %17
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
