; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_send_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_send_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.clariion_dh_data = type { i32, i64 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@CLARIION_RETRIES = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@ADD_TO_MLQUEUE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: INQUIRY sense code %02x/%02x/%02x\0A\00", align 1
@CLARIION_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.clariion_dh_data*)* @clariion_send_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clariion_send_inquiry(%struct.scsi_device* %0, %struct.clariion_dh_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.clariion_dh_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_sense_hdr, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.clariion_dh_data* %1, %struct.clariion_dh_data** %5, align 8
  %9 = load i32, i32* @CLARIION_RETRIES, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %41, %2
  %11 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %12 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %13 = call i32 @send_inquiry_cmd(%struct.scsi_device* %11, i32 192, %struct.clariion_dh_data* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SCSI_DH_OK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %10
  %18 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %19 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %17
  %23 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %24 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %27 = call i32 @scsi_normalize_sense(i32 %25, i32 %26, %struct.scsi_sense_hdr* %8)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %31, i32* %3, align 4
  br label %62

32:                                               ; preds = %22
  %33 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %34 = call i32 @clariion_check_sense(%struct.scsi_device* %33, %struct.scsi_sense_hdr* %8)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %7, align 4
  br label %10

44:                                               ; preds = %37, %32
  %45 = load i32, i32* @KERN_ERR, align 4
  %46 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %47 = load i32, i32* @CLARIION_NAME, align 4
  %48 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sdev_printk(i32 %45, %struct.scsi_device* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %49, i32 %51, i32 %53)
  %55 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %55, i32* %6, align 4
  br label %60

56:                                               ; preds = %17, %10
  %57 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %58 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %5, align 8
  %59 = call i32 @parse_sp_info_reply(%struct.scsi_device* %57, %struct.clariion_dh_data* %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %44
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %30
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @send_inquiry_cmd(%struct.scsi_device*, i32, %struct.clariion_dh_data*) #1

declare dso_local i32 @scsi_normalize_sense(i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @clariion_check_sense(%struct.scsi_device*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @parse_sp_info_reply(%struct.scsi_device*, %struct.clariion_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
