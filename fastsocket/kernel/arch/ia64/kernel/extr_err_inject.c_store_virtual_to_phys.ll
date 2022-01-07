; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_err_inject.c_store_virtual_to_phys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_err_inject.c_store_virtual_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sys_device = type { i32 }
%struct.sysdev_attribute = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@VM_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@phys_addr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sys_device*, %struct.sysdev_attribute*, i8*, i64)* @store_virtual_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_virtual_to_phys(%struct.sys_device* %0, %struct.sysdev_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sys_device*, align 8
  %7 = alloca %struct.sysdev_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sys_device* %0, %struct.sys_device** %6, align 8
  store %struct.sysdev_attribute* %1, %struct.sysdev_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.sys_device*, %struct.sys_device** %6, align 8
  %14 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @simple_strtoull(i8* %16, i32* null, i32 16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @VM_READ, align 4
  %24 = call i32 @get_user_pages(%struct.TYPE_3__* %18, i32 %21, i32 %22, i32 1, i32 %23, i32 0, i32* null, i32* null)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %38

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @ia64_tpa(i32 %31)
  %33 = load i32*, i32** @phys_addr, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %30, %27
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i32 @simple_strtoull(i8*, i32*, i32) #1

declare dso_local i32 @get_user_pages(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ia64_tpa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
