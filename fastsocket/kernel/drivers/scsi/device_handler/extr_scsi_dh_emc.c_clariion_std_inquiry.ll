; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_std_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_std_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.clariion_dh_data = type { i32, i32, i32, i64 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: INQUIRY sense code %02x/%02x/%02x\0A\00", align 1
@CLARIION_NAME = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@SCSI_DH_DEV_UNSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"FC\00", align 1
@CLARIION_SHORT_TRESPASS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: detected Clariion %s, flags %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.clariion_dh_data*)* @clariion_std_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clariion_std_inquiry(%struct.scsi_device* %0, %struct.clariion_dh_data* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.clariion_dh_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scsi_sense_hdr, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.clariion_dh_data* %1, %struct.clariion_dh_data** %4, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %10 = call i32 @send_inquiry_cmd(%struct.scsi_device* %8, i32 0, %struct.clariion_dh_data* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SCSI_DH_OK, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %2
  %15 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %16 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %21 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %24 = call i64 @scsi_normalize_sense(i32 %22, i32 %23, %struct.scsi_sense_hdr* %7)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load i32, i32* @KERN_ERR, align 4
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = load i32, i32* @CLARIION_NAME, align 4
  %30 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, %struct.scsi_device*, i8*, i32, i8*, i32, ...) @sdev_printk(i32 %27, %struct.scsi_device* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %33, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %26, %19
  %40 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %40, i32* %5, align 4
  br label %74

41:                                               ; preds = %14, %2
  %42 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %43 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %44 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @parse_sp_model(%struct.scsi_device* %42, i32 %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @SCSI_DH_DEV_UNSUPP, align 4
  store i32 %50, i32* %5, align 4
  br label %74

51:                                               ; preds = %41
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strncmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @CLARIION_SHORT_TRESPASS, align 4
  %61 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %62 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %55
  %66 = load i32, i32* @KERN_INFO, align 4
  %67 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %68 = load i32, i32* @CLARIION_NAME, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %71 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, %struct.scsi_device*, i8*, i32, i8*, i32, ...) @sdev_printk(i32 %66, %struct.scsi_device* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %68, i8* %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %49, %39
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @send_inquiry_cmd(%struct.scsi_device*, i32, %struct.clariion_dh_data*) #1

declare dso_local i64 @scsi_normalize_sense(i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i8*, i32, ...) #1

declare dso_local i8* @parse_sp_model(%struct.scsi_device*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
