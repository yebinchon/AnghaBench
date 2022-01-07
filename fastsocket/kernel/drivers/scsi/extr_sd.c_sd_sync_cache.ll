; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_sync_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_sync_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SYNCHRONIZE_CACHE = common dso_local global i8 0, align 1
@DMA_NONE = common dso_local global i32 0, align 4
@SD_FLUSH_TIMEOUT = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_disk*)* @sd_sync_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_sync_cache(%struct.scsi_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.scsi_sense_hdr, align 4
  %8 = alloca [10 x i8], align 1
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  %9 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %9, i32 0, i32 0
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %6, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %13 = call i32 @scsi_device_online(%struct.scsi_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %1
  store i32 3, i32* %4, align 4
  br label %19

19:                                               ; preds = %36, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = bitcast [10 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %23, i8 0, i64 10, i1 false)
  %24 = load i8, i8* @SYNCHRONIZE_CACHE, align 1
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  store i8 %24, i8* %25, align 1
  %26 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %28 = load i32, i32* @DMA_NONE, align 4
  %29 = load i32, i32* @SD_FLUSH_TIMEOUT, align 4
  %30 = load i32, i32* @SD_MAX_RETRIES, align 4
  %31 = call i32 @scsi_execute_req(%struct.scsi_device* %26, i8* %27, i32 %28, i32* null, i32 0, %struct.scsi_sense_hdr* %7, i32 %29, i32 %30, i32* null)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %39

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  br label %19

39:                                               ; preds = %34, %19
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @sd_print_result(%struct.scsi_disk* %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @driver_byte(i32 %46)
  %48 = load i32, i32* @DRIVER_SENSE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %53 = call i32 @sd_print_sense_hdr(%struct.scsi_disk* %52, %struct.scsi_sense_hdr* %7)
  br label %54

54:                                               ; preds = %51, %42
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %58, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i32*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i32 @sd_print_result(%struct.scsi_disk*, i32) #1

declare dso_local i32 @driver_byte(i32) #1

declare dso_local i32 @sd_print_sense_hdr(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
