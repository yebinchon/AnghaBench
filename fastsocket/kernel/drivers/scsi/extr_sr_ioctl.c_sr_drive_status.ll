; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr_ioctl.c_sr_drive_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr_ioctl.c_sr_drive_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.scsi_cd* }
%struct.scsi_cd = type { i32 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }
%struct.media_event_desc = type { i64, i64 }

@CDSL_CURRENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CDS_DISC_OK = common dso_local global i32 0, align 4
@NOT_READY = common dso_local global i64 0, align 8
@CDS_DRIVE_NOT_READY = common dso_local global i32 0, align 4
@CDS_TRAY_OPEN = common dso_local global i32 0, align 4
@CDS_NO_DISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr_drive_status(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cd*, align 8
  %7 = alloca %struct.scsi_sense_hdr, align 8
  %8 = alloca %struct.media_event_desc, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %10 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %9, i32 0, i32 0
  %11 = load %struct.scsi_cd*, %struct.scsi_cd** %10, align 8
  store %struct.scsi_cd* %11, %struct.scsi_cd** %6, align 8
  %12 = load i32, i32* @CDSL_CURRENT, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %102

18:                                               ; preds = %2
  %19 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @sr_test_unit_ready(i32 %21, %struct.scsi_sense_hdr* %7)
  %23 = icmp eq i64 0, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @CDS_DISC_OK, align 4
  store i32 %25, i32* %3, align 4
  br label %102

26:                                               ; preds = %18
  %27 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NOT_READY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @CDS_DRIVE_NOT_READY, align 4
  store i32 %43, i32* %3, align 4
  br label %102

44:                                               ; preds = %38, %34, %29, %26
  %45 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %46 = call i32 @cdrom_get_media_event(%struct.cdrom_device_info* %45, %struct.media_event_desc* %8)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.media_event_desc, %struct.media_event_desc* %8, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @CDS_DISC_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %102

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.media_event_desc, %struct.media_event_desc* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @CDS_TRAY_OPEN, align 4
  store i32 %59, i32* %3, align 4
  br label %102

60:                                               ; preds = %54
  %61 = load i32, i32* @CDS_NO_DISC, align 4
  store i32 %61, i32* %3, align 4
  br label %102

62:                                               ; preds = %44
  %63 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %7)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NOT_READY, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @CDS_TRAY_OPEN, align 4
  store i32 %79, i32* %3, align 4
  br label %102

80:                                               ; preds = %74, %70, %65, %62
  %81 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NOT_READY, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @CDS_DISC_OK, align 4
  store i32 %90, i32* %3, align 4
  br label %102

91:                                               ; preds = %85, %80
  %92 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %7)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 58
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @CDS_NO_DISC, align 4
  store i32 %99, i32* %3, align 4
  br label %102

100:                                              ; preds = %94, %91
  %101 = load i32, i32* @CDS_TRAY_OPEN, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %98, %89, %78, %60, %58, %52, %42, %24, %15
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @sr_test_unit_ready(i32, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @cdrom_get_media_event(%struct.cdrom_device_info*, %struct.media_event_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
