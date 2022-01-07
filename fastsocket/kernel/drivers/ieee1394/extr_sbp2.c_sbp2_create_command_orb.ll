; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_create_command_orb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_create_command_orb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_lu = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.sbp2_command_info = type { i32, %struct.sbp2_command_orb }
%struct.sbp2_command_orb = type { i32, i32, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@ORB_DIRECTION_NO_DATA_TRANSFER = common dso_local global i64 0, align 8
@ORB_DIRECTION_WRITE_TO_MEDIA = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ORB_DIRECTION_READ_FROM_MEDIA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Falling back to DMA_NONE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbp2_lu*, %struct.sbp2_command_info*, %struct.scsi_cmnd*)* @sbp2_create_command_orb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2_create_command_orb(%struct.sbp2_lu* %0, %struct.sbp2_command_info* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.sbp2_lu*, align 8
  %5 = alloca %struct.sbp2_command_info*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.sbp2_command_orb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sbp2_lu* %0, %struct.sbp2_lu** %4, align 8
  store %struct.sbp2_command_info* %1, %struct.sbp2_command_info** %5, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %6, align 8
  %13 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %14 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %5, align 8
  %22 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %21, i32 0, i32 1
  store %struct.sbp2_command_orb* %22, %struct.sbp2_command_orb** %8, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %24 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %5, align 8
  %30 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMA_TO_DEVICE, align 4
  %33 = call i32 @dma_sync_single_for_cpu(%struct.device* %28, i32 %31, i32 24, i32 %32)
  %34 = call i32 @ORB_SET_NULL_PTR(i32 1)
  %35 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %8, align 8
  %36 = getelementptr inbounds %struct.sbp2_command_orb, %struct.sbp2_command_orb* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %8, align 8
  %38 = getelementptr inbounds %struct.sbp2_command_orb, %struct.sbp2_command_orb* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %40 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ORB_SET_MAX_PAYLOAD(i32 %41)
  %43 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %8, align 8
  %44 = getelementptr inbounds %struct.sbp2_command_orb, %struct.sbp2_command_orb* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %46 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ORB_SET_SPEED(i32 %47)
  %49 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %8, align 8
  %50 = getelementptr inbounds %struct.sbp2_command_orb, %struct.sbp2_command_orb* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = call i32 @ORB_SET_NOTIFY(i32 1)
  %54 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %8, align 8
  %55 = getelementptr inbounds %struct.sbp2_command_orb, %struct.sbp2_command_orb* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @DMA_NONE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %3
  %62 = load i64, i64* @ORB_DIRECTION_NO_DATA_TRANSFER, align 8
  store i64 %62, i64* %11, align 8
  br label %86

63:                                               ; preds = %3
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i64, i64* @ORB_DIRECTION_WRITE_TO_MEDIA, align 8
  store i64 %71, i64* %11, align 8
  br label %85

72:                                               ; preds = %67, %63
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i64, i64* @ORB_DIRECTION_READ_FROM_MEDIA, align 8
  store i64 %80, i64* %11, align 8
  br label %84

81:                                               ; preds = %76, %72
  %82 = call i32 @SBP2_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %83 = load i64, i64* @ORB_DIRECTION_NO_DATA_TRANSFER, align 8
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %81, %79
  br label %85

85:                                               ; preds = %84, %70
  br label %86

86:                                               ; preds = %85, %61
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @ORB_DIRECTION_NO_DATA_TRANSFER, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %8, align 8
  %92 = getelementptr inbounds %struct.sbp2_command_orb, %struct.sbp2_command_orb* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %8, align 8
  %94 = getelementptr inbounds %struct.sbp2_command_orb, %struct.sbp2_command_orb* %93, i32 0, i32 2
  store i32 0, i32* %94, align 4
  %95 = call i32 @ORB_SET_DIRECTION(i32 1)
  %96 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %8, align 8
  %97 = getelementptr inbounds %struct.sbp2_command_orb, %struct.sbp2_command_orb* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  store i32 0, i32* %12, align 4
  br label %113

100:                                              ; preds = %86
  %101 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %8, align 8
  %102 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %103 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %5, align 8
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %107 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %106)
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %109 = call i32 @scsi_sglist(%struct.scsi_cmnd* %108)
  %110 = load i64, i64* %11, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @sbp2_prep_command_orb_sg(%struct.sbp2_command_orb* %101, %struct.TYPE_6__* %104, %struct.sbp2_command_info* %105, i32 %107, i32 %109, i64 %110, i32 %111)
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %100, %90
  %114 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %8, align 8
  %115 = call i32 @sbp2util_cpu_to_be32_buffer(%struct.sbp2_command_orb* %114, i32 24)
  %116 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %8, align 8
  %117 = getelementptr inbounds %struct.sbp2_command_orb, %struct.sbp2_command_orb* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @memset(i32 %118, i32 0, i32 4)
  %120 = load %struct.sbp2_command_orb*, %struct.sbp2_command_orb** %8, align 8
  %121 = getelementptr inbounds %struct.sbp2_command_orb, %struct.sbp2_command_orb* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %124 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %127 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @memcpy(i32 %122, i32 %125, i32 %128)
  %130 = load %struct.device*, %struct.device** %7, align 8
  %131 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %5, align 8
  %132 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @DMA_TO_DEVICE, align 4
  %135 = call i32 @dma_sync_single_for_device(%struct.device* %130, i32 %133, i32 24, i32 %134)
  %136 = load i32, i32* %12, align 4
  ret i32 %136
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_sync_single_for_cpu(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @ORB_SET_NULL_PTR(i32) #1

declare dso_local i32 @ORB_SET_MAX_PAYLOAD(i32) #1

declare dso_local i32 @ORB_SET_SPEED(i32) #1

declare dso_local i32 @ORB_SET_NOTIFY(i32) #1

declare dso_local i32 @SBP2_INFO(i8*) #1

declare dso_local i32 @ORB_SET_DIRECTION(i32) #1

declare dso_local i32 @sbp2_prep_command_orb_sg(%struct.sbp2_command_orb*, %struct.TYPE_6__*, %struct.sbp2_command_info*, i32, i32, i64, i32) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @sbp2util_cpu_to_be32_buffer(%struct.sbp2_command_orb*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
