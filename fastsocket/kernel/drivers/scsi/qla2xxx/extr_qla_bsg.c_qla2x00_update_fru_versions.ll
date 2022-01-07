; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_update_fru_versions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_update_fru_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, {}*, %struct.TYPE_13__*, %struct.TYPE_9__, %struct.Scsi_Host* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_14__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla_image_version_list = type { i32, %struct.qla_image_version* }
%struct.qla_image_version = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@DMA_POOL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EXT_STATUS_NO_MEMORY = common dso_local global i64 0, align 8
@EXT_STATUS_MAILBOX = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla2x00_update_fru_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_update_fru_versions(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qla_image_version_list*, align 8
  %10 = alloca %struct.qla_image_version*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  %14 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %15 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %14, i32 0, i32 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %3, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %18 = call %struct.TYPE_14__* @shost_priv(%struct.Scsi_Host* %17)
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %4, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %20, align 8
  store %struct.qla_hw_data* %21, %struct.qla_hw_data** %5, align 8
  store i32 0, i32* %6, align 4
  %22 = load i32, i32* @DMA_POOL_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %7, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = bitcast i8* %26 to %struct.qla_image_version_list*
  store %struct.qla_image_version_list* %27, %struct.qla_image_version_list** %9, align 8
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @dma_pool_alloc(i32 %30, i32 %31, i32* %12)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %1
  %36 = load i64, i64* @EXT_STATUS_NO_MEMORY, align 8
  %37 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %38 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %37, i32 0, i32 2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  store i64 %36, i64* %44, align 8
  br label %120

45:                                               ; preds = %1
  %46 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %47 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %51 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.qla_image_version_list*, %struct.qla_image_version_list** %9, align 8
  %55 = mul nuw i64 4, %23
  %56 = trunc i64 %55 to i32
  %57 = call i32 @sg_copy_to_buffer(i32 %49, i32 %53, %struct.qla_image_version_list* %54, i32 %56)
  %58 = load %struct.qla_image_version_list*, %struct.qla_image_version_list** %9, align 8
  %59 = getelementptr inbounds %struct.qla_image_version_list, %struct.qla_image_version_list* %58, i32 0, i32 1
  %60 = load %struct.qla_image_version*, %struct.qla_image_version** %59, align 8
  store %struct.qla_image_version* %60, %struct.qla_image_version** %10, align 8
  %61 = load %struct.qla_image_version_list*, %struct.qla_image_version_list** %9, align 8
  %62 = getelementptr inbounds %struct.qla_image_version_list, %struct.qla_image_version_list* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %101, %45
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %11, align 4
  %67 = icmp ne i32 %65, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %64
  %69 = load i8*, i8** %13, align 8
  %70 = load %struct.qla_image_version*, %struct.qla_image_version** %10, align 8
  %71 = getelementptr inbounds %struct.qla_image_version, %struct.qla_image_version* %70, i32 0, i32 1
  %72 = call i32 @memcpy(i8* %69, i32* %71, i32 4)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i8*, i8** %13, align 8
  %76 = load %struct.qla_image_version*, %struct.qla_image_version** %10, align 8
  %77 = getelementptr inbounds %struct.qla_image_version, %struct.qla_image_version* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qla_image_version*, %struct.qla_image_version** %10, align 8
  %81 = getelementptr inbounds %struct.qla_image_version, %struct.qla_image_version* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.qla_image_version*, %struct.qla_image_version** %10, align 8
  %85 = getelementptr inbounds %struct.qla_image_version, %struct.qla_image_version* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @qla2x00_write_sfp(%struct.TYPE_14__* %73, i32 %74, i8* %75, i32 %79, i32 %83, i32 4, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %68
  %92 = load i64, i64* @EXT_STATUS_MAILBOX, align 8
  %93 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %94 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %93, i32 0, i32 2
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  store i64 %92, i64* %100, align 8
  br label %113

101:                                              ; preds = %68
  %102 = load %struct.qla_image_version*, %struct.qla_image_version** %10, align 8
  %103 = getelementptr inbounds %struct.qla_image_version, %struct.qla_image_version* %102, i32 1
  store %struct.qla_image_version* %103, %struct.qla_image_version** %10, align 8
  br label %64

104:                                              ; preds = %64
  %105 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %106 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %105, i32 0, i32 2
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %104, %91
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %13, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @dma_pool_free(i32 %116, i8* %117, i32 %118)
  br label %120

120:                                              ; preds = %113, %35
  %121 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %122 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %121, i32 0, i32 0
  store i32 4, i32* %122, align 8
  %123 = load i32, i32* @DID_OK, align 4
  %124 = shl i32 %123, 16
  %125 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %126 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %125, i32 0, i32 2
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  %129 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %130 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %129, i32 0, i32 1
  %131 = bitcast {}** %130 to i32 (%struct.fc_bsg_job*)**
  %132 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %131, align 8
  %133 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %134 = call i32 %132(%struct.fc_bsg_job* %133)
  %135 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %135)
  ret i32 0
}

declare dso_local %struct.TYPE_14__* @shost_priv(%struct.Scsi_Host*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.qla_image_version_list*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @qla2x00_write_sfp(%struct.TYPE_14__*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
