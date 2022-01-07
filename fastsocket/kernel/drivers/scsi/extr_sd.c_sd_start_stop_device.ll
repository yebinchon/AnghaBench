; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_start_stop_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_start_stop_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { %struct.scsi_device* }
%struct.scsi_device = type { i64 }
%struct.scsi_sense_hdr = type { i32 }

@START_STOP = common dso_local global i8 0, align 1
@ENODEV = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"START_STOP FAILED\0A\00", align 1
@DRIVER_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_disk*, i32)* @sd_start_stop_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start_stop_device(%struct.scsi_disk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_disk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca %struct.scsi_sense_hdr, align 4
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %11 = load i8, i8* @START_STOP, align 1
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds i8, i8* %10, i64 1
  %13 = getelementptr inbounds i8, i8* %10, i64 6
  br label %14

14:                                               ; preds = %14, %2
  %15 = phi i8* [ %12, %2 ], [ %16, %14 ]
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = icmp eq i8* %16, %13
  br i1 %17, label %18, label %14

18:                                               ; preds = %14
  %19 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %19, i32 0, i32 0
  %21 = load %struct.scsi_device*, %struct.scsi_device** %20, align 8
  store %struct.scsi_device* %21, %struct.scsi_device** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 4
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, 1
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 16, i32 48
  %40 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 4
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %39
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %47 = call i32 @scsi_device_online(%struct.scsi_device* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %79

52:                                               ; preds = %45
  %53 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %54 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %55 = load i32, i32* @DMA_NONE, align 4
  %56 = load i32, i32* @SD_TIMEOUT, align 4
  %57 = load i32, i32* @SD_MAX_RETRIES, align 4
  %58 = call i32 @scsi_execute_req(%struct.scsi_device* %53, i8* %54, i32 %55, i32* null, i32 0, %struct.scsi_sense_hdr* %7, i32 %56, i32 %57, i32* null)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %52
  %62 = load i32, i32* @KERN_WARNING, align 4
  %63 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %64 = call i32 @sd_printk(i32 %62, %struct.scsi_disk* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @sd_print_result(%struct.scsi_disk* %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @driver_byte(i32 %68)
  %70 = load i32, i32* @DRIVER_SENSE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %75 = call i32 @sd_print_sense_hdr(%struct.scsi_disk* %74, %struct.scsi_sense_hdr* %7)
  br label %76

76:                                               ; preds = %73, %61
  br label %77

77:                                               ; preds = %76, %52
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %49
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i32*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_print_result(%struct.scsi_disk*, i32) #1

declare dso_local i32 @driver_byte(i32) #1

declare dso_local i32 @sd_print_sense_hdr(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
