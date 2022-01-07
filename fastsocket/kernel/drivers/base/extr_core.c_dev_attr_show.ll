; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_dev_attr_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_dev_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.device_attribute = type { i64 (%struct.device*, %struct.device_attribute*, i8*)* }
%struct.device = type opaque
%struct.device.0 = type { i32 }

@EIO = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"dev_attr_show: %s returned bad count\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.attribute*, i8*)* @dev_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dev_attr_show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca %struct.device.0*, align 8
  %9 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.attribute*, %struct.attribute** %5, align 8
  %11 = call %struct.device_attribute* @to_dev_attr(%struct.attribute* %10)
  store %struct.device_attribute* %11, %struct.device_attribute** %7, align 8
  %12 = load %struct.kobject*, %struct.kobject** %4, align 8
  %13 = call %struct.device.0* @to_dev(%struct.kobject* %12)
  store %struct.device.0* %13, %struct.device.0** %8, align 8
  %14 = load i64, i64* @EIO, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %16, i32 0, i32 0
  %18 = load i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*)** %17, align 8
  %19 = icmp ne i64 (%struct.device*, %struct.device_attribute*, i8*)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %21, i32 0, i32 0
  %23 = load i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*)** %22, align 8
  %24 = load %struct.device.0*, %struct.device.0** %8, align 8
  %25 = bitcast %struct.device.0* %24 to %struct.device*
  %26 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 %23(%struct.device* %25, %struct.device_attribute* %26, i8* %27)
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %20, %3
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %35 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %34, i32 0, i32 0
  %36 = load i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*)** %35, align 8
  %37 = ptrtoint i64 (%struct.device*, %struct.device_attribute*, i8*)* %36 to i64
  %38 = call i32 @print_symbol(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %33, %29
  %40 = load i64, i64* %9, align 8
  ret i64 %40
}

declare dso_local %struct.device_attribute* @to_dev_attr(%struct.attribute*) #1

declare dso_local %struct.device.0* @to_dev(%struct.kobject*) #1

declare dso_local i32 @print_symbol(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
