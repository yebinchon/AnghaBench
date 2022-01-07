; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_microcode_core.c_reload_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_microcode_core.c_reload_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }
%struct.sysdev_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*, %struct.sysdev_attribute*, i8*, i64)* @reload_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reload_store(%struct.sys_device* %0, %struct.sysdev_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sys_device*, align 8
  %7 = alloca %struct.sysdev_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.sys_device* %0, %struct.sys_device** %6, align 8
  store %struct.sysdev_attribute* %1, %struct.sysdev_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %15 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @simple_strtoul(i8* %17, i8** %13, i32 0)
  store i64 %18, i64* %10, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %46

25:                                               ; preds = %4
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %26, 1
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = call i32 (...) @get_online_cpus()
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @cpu_online(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @reload_for_cpu(i32 %34)
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = call i32 (...) @put_online_cpus()
  br label %38

38:                                               ; preds = %36, %25
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %22
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i32 @reload_for_cpu(i32) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
