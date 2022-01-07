; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_trespass_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_trespass_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@SCSI_DH_IO = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"%s: Found valid sense data 0x%2x, 0x%2x, 0x%2x while sending CLARiiON trespass command.\0A\00", align 1
@CLARIION_NAME = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"%s: Array Based Copy in progress while sending CLARiiON trespass command.\0A\00", align 1
@SCSI_DH_DEV_TEMP_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [95 x i8] c"%s: Detected in-progress ucode upgrade NDU operation while sending CLARiiON trespass command.\0A\00", align 1
@SCSI_DH_DEV_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: failed to send MODE SELECT, no sense available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*)* @trespass_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trespass_endio(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_sense_hdr, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %10 = call i32 @scsi_normalize_sense(i8* %8, i32 %9, %struct.scsi_sense_hdr* %6)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @KERN_ERR, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %15 = load i32, i32* @CLARIION_NAME, align 4
  %16 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %13, %struct.scsi_device* %14, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17, i32 %19, i32 %21)
  %23 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %40

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* @KERN_INFO, align 4
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = load i32, i32* @CLARIION_NAME, align 4
  %38 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %35, %struct.scsi_device* %36, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @SCSI_DH_DEV_TEMP_BUSY, align 4
  store i32 %39, i32* %5, align 4
  br label %61

40:                                               ; preds = %30, %26, %12
  %41 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @KERN_INFO, align 4
  %54 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %55 = load i32, i32* @CLARIION_NAME, align 4
  %56 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %53, %struct.scsi_device* %54, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @SCSI_DH_DEV_TEMP_BUSY, align 4
  store i32 %57, i32* %5, align 4
  br label %60

58:                                               ; preds = %48, %44, %40
  %59 = load i32, i32* @SCSI_DH_DEV_FAILED, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %52
  br label %61

61:                                               ; preds = %60, %34
  br label %67

62:                                               ; preds = %2
  %63 = load i32, i32* @KERN_INFO, align 4
  %64 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %65 = load i32, i32* @CLARIION_NAME, align 4
  %66 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %63, %struct.scsi_device* %64, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %61
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @scsi_normalize_sense(i8*, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
