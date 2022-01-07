; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_sys.c_sysdev_store_ulong.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_sys.c_sysdev_store_ulong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }
%struct.sysdev_attribute = type { i32 }
%struct.sysdev_ext_attribute = type { i64 }

@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sysdev_store_ulong(%struct.sys_device* %0, %struct.sysdev_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sys_device*, align 8
  %7 = alloca %struct.sysdev_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sysdev_ext_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.sys_device* %0, %struct.sys_device** %6, align 8
  store %struct.sysdev_attribute* %1, %struct.sysdev_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.sysdev_attribute*, %struct.sysdev_attribute** %7, align 8
  %14 = call %struct.sysdev_ext_attribute* @to_ext_attr(%struct.sysdev_attribute* %13)
  store %struct.sysdev_ext_attribute* %14, %struct.sysdev_ext_attribute** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @simple_strtoul(i8* %15, i8** %11, i32 0)
  store i64 %16, i64* %12, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %30

23:                                               ; preds = %4
  %24 = load i64, i64* %12, align 8
  %25 = load %struct.sysdev_ext_attribute*, %struct.sysdev_ext_attribute** %10, align 8
  %26 = getelementptr inbounds %struct.sysdev_ext_attribute, %struct.sysdev_ext_attribute* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i64*
  store i64 %24, i64* %28, align 8
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %23, %20
  %31 = load i64, i64* %5, align 8
  ret i64 %31
}

declare dso_local %struct.sysdev_ext_attribute* @to_ext_attr(%struct.sysdev_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
