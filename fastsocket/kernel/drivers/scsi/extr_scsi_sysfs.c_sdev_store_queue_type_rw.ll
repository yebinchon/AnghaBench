; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_sdev_store_queue_type_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_sdev_store_queue_type_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_host_template* }
%struct.scsi_host_template = type { i32 (%struct.scsi_device.0*, i32)* }
%struct.scsi_device.0 = type opaque

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@MSG_ORDERED_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sdev_store_queue_type_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sdev_store_queue_type_rw(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.scsi_host_template*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.scsi_device* @to_scsi_device(%struct.device* %15)
  store %struct.scsi_device* %16, %struct.scsi_device** %10, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.scsi_host_template*, %struct.scsi_host_template** %20, align 8
  store %struct.scsi_host_template* %21, %struct.scsi_host_template** %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %23 = call i32 @scsi_get_tag_type(%struct.scsi_device* %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.scsi_host_template*, %struct.scsi_host_template** %11, align 8
  %30 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %29, i32 0, i32 0
  %31 = load i32 (%struct.scsi_device.0*, i32)*, i32 (%struct.scsi_device.0*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.scsi_device.0*, i32)* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %4
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %78

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @MSG_ORDERED_TAG, align 4
  store i32 %41, i32* %12, align 4
  br label %57

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strncmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  store i32 %47, i32* %12, align 4
  br label %56

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @strncmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* @EINVAL, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %5, align 8
  br label %78

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %46
  br label %57

57:                                               ; preds = %56, %40
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %5, align 8
  br label %78

63:                                               ; preds = %57
  %64 = load %struct.scsi_host_template*, %struct.scsi_host_template** %11, align 8
  %65 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %64, i32 0, i32 0
  %66 = load i32 (%struct.scsi_device.0*, i32)*, i32 (%struct.scsi_device.0*, i32)** %65, align 8
  %67 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %68 = bitcast %struct.scsi_device* %67 to %struct.scsi_device.0*
  %69 = load i32, i32* %12, align 4
  %70 = call i32 %66(%struct.scsi_device.0* %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %5, align 8
  br label %78

76:                                               ; preds = %63
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %76, %73, %61, %52, %33
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @scsi_get_tag_type(%struct.scsi_device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
