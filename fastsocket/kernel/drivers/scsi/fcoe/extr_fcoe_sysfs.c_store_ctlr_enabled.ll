; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_sysfs.c_store_ctlr_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_sysfs.c_store_ctlr_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fcoe_ctlr_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fcoe_ctlr_device*)* }

@ENOTSUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_ctlr_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_ctlr_enabled(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fcoe_ctlr_device*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.fcoe_ctlr_device* @dev_to_ctlr(%struct.device* %12)
  store %struct.fcoe_ctlr_device* %13, %struct.fcoe_ctlr_device** %10, align 8
  %14 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %15 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %40 [
    i32 129, label %17
    i32 130, label %27
    i32 128, label %37
  ]

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 49
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %5, align 8
  br label %55

24:                                               ; preds = %17
  %25 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %26 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %25, i32 0, i32 0
  store i32 130, i32* %26, align 8
  br label %40

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 48
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %5, align 8
  br label %55

34:                                               ; preds = %27
  %35 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %36 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %35, i32 0, i32 0
  store i32 129, i32* %36, align 8
  br label %40

37:                                               ; preds = %4
  %38 = load i64, i64* @ENOTSUPP, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %55

40:                                               ; preds = %4, %34, %24
  %41 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %42 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.fcoe_ctlr_device*)*, i32 (%struct.fcoe_ctlr_device*)** %44, align 8
  %46 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %10, align 8
  %47 = call i32 %45(%struct.fcoe_ctlr_device* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %5, align 8
  br label %55

53:                                               ; preds = %40
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %50, %37, %32, %22
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.fcoe_ctlr_device* @dev_to_ctlr(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
