; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr.c_sr_media_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr.c_sr_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.scsi_cd* }
%struct.scsi_cd = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_sense_hdr = type { i32 }

@CDSL_CURRENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SDEV_EVT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @sr_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_media_change(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_sense_hdr*, align 8
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
  br label %80

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.scsi_sense_hdr* @kzalloc(i32 4, i32 %19)
  store %struct.scsi_sense_hdr* %20, %struct.scsi_sense_hdr** %8, align 8
  %21 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %22 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %25 = call i32 @sr_test_unit_ready(%struct.TYPE_3__* %23, %struct.scsi_sense_hdr* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %18
  %29 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %30 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %34 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 58
  br i1 %36, label %37, label %42

37:                                               ; preds = %32, %18
  %38 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %39 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  store i32 1, i32* %7, align 4
  br label %60

42:                                               ; preds = %32, %28
  %43 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %44 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %49 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %56 = call i32 @sr_cd_check(%struct.cdrom_device_info* %55)
  %57 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %58 = call i32 @get_sectorsize(%struct.scsi_cd* %57)
  br label %59

59:                                               ; preds = %54, %42
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %63 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %68 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* @SDEV_EVT_MEDIA_CHANGE, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @sdev_evt_send_simple(%struct.TYPE_3__* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %60
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %76 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %78 = call i32 @kfree(%struct.scsi_sense_hdr* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %73, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.scsi_sense_hdr* @kzalloc(i32, i32) #1

declare dso_local i32 @sr_test_unit_ready(%struct.TYPE_3__*, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @sr_cd_check(%struct.cdrom_device_info*) #1

declare dso_local i32 @get_sectorsize(%struct.scsi_cd*) #1

declare dso_local i32 @sdev_evt_send_simple(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
