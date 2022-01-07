; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_start_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_start_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%s: sending start_stop_unit failed, no sense available\0A\00", align 1
@HP_SW_NAME = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@SCSI_DH_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: sending start_stop_unit failed, sense %x/%x/%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*)* @start_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_done(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.scsi_sense_hdr, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %10 = call i32 @scsi_normalize_sense(i8* %8, i32 %9, %struct.scsi_sense_hdr* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @KERN_WARNING, align 4
  %15 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %16 = load i32, i32* @HP_SW_NAME, align 4
  %17 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %14, %struct.scsi_device* %15, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %33 [
    i32 128, label %22
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %31, i32* %7, align 4
  br label %45

32:                                               ; preds = %26, %22
  br label %33

33:                                               ; preds = %19, %32
  %34 = load i32, i32* @KERN_WARNING, align 4
  %35 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %36 = load i32, i32* @HP_SW_NAME, align 4
  %37 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %34, %struct.scsi_device* %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38, i32 %40, i32 %42)
  %44 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %33, %30
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @scsi_normalize_sense(i8*, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
