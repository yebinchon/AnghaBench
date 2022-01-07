; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_set_cmci_disabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_set_cmci_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }
%struct.sysdev_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@mce_cmci_disabled = common dso_local global i32 0, align 4
@mce_disable_ce = common dso_local global i32 0, align 4
@mce_enable_ce = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sys_device*, %struct.sysdev_attribute*, i8*, i64)* @set_cmci_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_cmci_disabled(%struct.sys_device* %0, %struct.sysdev_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sys_device*, align 8
  %7 = alloca %struct.sysdev_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sys_device* %0, %struct.sys_device** %6, align 8
  store %struct.sysdev_attribute* %1, %struct.sysdev_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i64 @strict_strtoull(i8* %11, i32 0, i64* %10)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %5, align 8
  br label %38

17:                                               ; preds = %4
  %18 = load i32, i32* @mce_cmci_disabled, align 4
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = xor i32 %18, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @mce_disable_ce, align 4
  %31 = call i32 @on_each_cpu(i32 %30, i32* null, i32 1)
  store i32 1, i32* @mce_cmci_disabled, align 4
  br label %35

32:                                               ; preds = %26
  store i32 0, i32* @mce_cmci_disabled, align 4
  %33 = load i32, i32* @mce_enable_ce, align 4
  %34 = call i32 @on_each_cpu(i32 %33, i32* null, i32 1)
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %36, %14
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i64 @strict_strtoull(i8*, i32, i64*) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
