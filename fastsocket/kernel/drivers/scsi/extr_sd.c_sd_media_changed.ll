; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_media_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_media_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.scsi_disk = type { i32, i32, %struct.scsi_device* }
%struct.scsi_device = type { i32, i32 }
%struct.scsi_sense_hdr = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sd_media_changed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@SDEV_EVT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @sd_media_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_media_changed(%struct.gendisk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.scsi_disk*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.scsi_sense_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %8 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %9 = call %struct.scsi_disk* @scsi_disk(%struct.gendisk* %8)
  store %struct.scsi_disk* %9, %struct.scsi_disk** %4, align 8
  %10 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %10, i32 0, i32 2
  %12 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  store %struct.scsi_device* %12, %struct.scsi_device** %5, align 8
  store %struct.scsi_sense_hdr* null, %struct.scsi_sense_hdr** %6, align 8
  %13 = load i32, i32* @KERN_INFO, align 4
  %14 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %15 = call i32 @sd_printk(i32 %13, %struct.scsi_disk* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @SCSI_LOG_HLQUEUE(i32 3, i32 %15)
  %17 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

22:                                               ; preds = %1
  %23 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %24 = call i32 @scsi_device_online(%struct.scsi_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %28 = call i32 @set_media_not_present(%struct.scsi_disk* %27)
  store i32 1, i32* %7, align 4
  br label %66

29:                                               ; preds = %22
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %33 = call i64 @scsi_block_when_processing_errors(%struct.scsi_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.scsi_sense_hdr* @kzalloc(i32 4, i32 %36)
  store %struct.scsi_sense_hdr* %37, %struct.scsi_sense_hdr** %6, align 8
  %38 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %39 = load i32, i32* @SD_TIMEOUT, align 4
  %40 = load i32, i32* @SD_MAX_RETRIES, align 4
  %41 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %42 = call i32 @scsi_test_unit_ready(%struct.scsi_device* %38, i32 %39, i32 %40, %struct.scsi_sense_hdr* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %35, %29
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %48 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %52 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 58
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %43
  %56 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %57 = call i32 @set_media_not_present(%struct.scsi_disk* %56)
  store i32 1, i32* %7, align 4
  br label %66

58:                                               ; preds = %50, %46
  %59 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %60 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %62 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  %64 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %65 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %55, %26
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %74 = load i32, i32* @SDEV_EVT_MEDIA_CHANGE, align 4
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i32 @sdev_evt_send_simple(%struct.scsi_device* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %66
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %80 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %82 = call i32 @kfree(%struct.scsi_sense_hdr* %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %77, %21
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.scsi_disk* @scsi_disk(%struct.gendisk*) #1

declare dso_local i32 @SCSI_LOG_HLQUEUE(i32, i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

declare dso_local i32 @set_media_not_present(%struct.scsi_disk*) #1

declare dso_local i64 @scsi_block_when_processing_errors(%struct.scsi_device*) #1

declare dso_local %struct.scsi_sense_hdr* @kzalloc(i32, i32) #1

declare dso_local i32 @scsi_test_unit_ready(%struct.scsi_device*, i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @sdev_evt_send_simple(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @kfree(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
