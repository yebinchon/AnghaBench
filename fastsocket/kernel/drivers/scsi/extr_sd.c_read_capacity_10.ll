; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_read_capacity_10.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_read_capacity_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32 }
%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }

@READ_CAPACITY_RETRIES_ON_RESET = common dso_local global i32 0, align 4
@READ_CAPACITY = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"READ CAPACITY failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"Too big for this kernel. Use a kernel compiled with support for large block devices.\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_disk*, %struct.scsi_device*, i8*)* @read_capacity_10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_capacity_10(%struct.scsi_disk* %0, %struct.scsi_device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_disk*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca %struct.scsi_sense_hdr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %5, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 3, i32* %12, align 4
  %16 = load i32, i32* @READ_CAPACITY_RETRIES_ON_RESET, align 4
  store i32 %16, i32* %13, align 4
  br label %17

17:                                               ; preds = %73, %3
  %18 = load i8, i8* @READ_CAPACITY, align 1
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  store i8 %18, i8* %19, align 16
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 1
  %21 = call i32 @memset(i8* %20, i32 0, i32 9)
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @memset(i8* %22, i32 0, i32 8)
  %24 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @SD_TIMEOUT, align 4
  %29 = load i32, i32* @SD_MAX_RETRIES, align 4
  %30 = call i32 @scsi_execute_req(%struct.scsi_device* %24, i8* %25, i32 %26, i8* %27, i32 8, %struct.scsi_sense_hdr* %9, i32 %28, i32 %29, i32* null)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %32 = call i64 @media_not_present(%struct.scsi_disk* %31, %struct.scsi_sense_hdr* %9)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %17
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %117

37:                                               ; preds = %17
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = call i32 @scsi_sense_valid(%struct.scsi_sense_hdr* %9)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UNIT_ATTENTION, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 41
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %9, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %13, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %67

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %53, %49, %44, %40
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi i1 [ false, %67 ], [ %72, %70 ]
  br i1 %74, label %17, label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* @KERN_NOTICE, align 4
  %80 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %81 = call i32 @sd_printk(i32 %79, %struct.scsi_disk* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %83 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @read_capacity_error(%struct.scsi_disk* %82, %struct.scsi_device* %83, %struct.scsi_sense_hdr* %9, i32 %84, i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %117

89:                                               ; preds = %75
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  %92 = call i8* @get_unaligned_be32(i8* %91)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %15, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = call i8* @get_unaligned_be32(i8* %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %108

100:                                              ; preds = %89
  %101 = load i32, i32* @KERN_ERR, align 4
  %102 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %103 = call i32 @sd_printk(i32 %101, %struct.scsi_disk* %102, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %105 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  %106 = load i32, i32* @EOVERFLOW, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %117

108:                                              ; preds = %89
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  %111 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %112 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %115 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %108, %100, %78, %34
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i64 @media_not_present(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i32 @read_capacity_error(%struct.scsi_disk*, %struct.scsi_device*, %struct.scsi_sense_hdr*, i32, i32) #1

declare dso_local i8* @get_unaligned_be32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
