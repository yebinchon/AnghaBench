; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.kobject }
%struct.kobject = type { i32 }
%struct.ata_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kobject }

@.str = private unnamed_addr constant [13 x i8] c"BAY_EVENT=%d\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @ata_acpi_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_acpi_uevent(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca [20 x i8], align 16
  %9 = alloca [2 x i8*], align 16
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.kobject* null, %struct.kobject** %7, align 8
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 1
  store i8* null, i8** %12, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %14 = icmp ne %struct.ata_device* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %17 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %22 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.kobject* %25, %struct.kobject** %7, align 8
  br label %26

26:                                               ; preds = %20, %15
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store %struct.kobject* %31, %struct.kobject** %7, align 8
  br label %32

32:                                               ; preds = %27, %26
  %33 = load %struct.kobject*, %struct.kobject** %7, align 8
  %34 = icmp ne %struct.kobject* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @snprintf(i8* %36, i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.kobject*, %struct.kobject** %7, align 8
  %40 = load i32, i32* @KOBJ_CHANGE, align 4
  %41 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %42 = call i32 @kobject_uevent_env(%struct.kobject* %39, i32 %40, i8** %41)
  br label %43

43:                                               ; preds = %35, %32
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @kobject_uevent_env(%struct.kobject*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
