; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_read_fru_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_read_fru_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, {}*, %struct.TYPE_15__*, %struct.TYPE_12__, %struct.TYPE_10__, %struct.Scsi_Host* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_16__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla_status_reg = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }

@DMA_POOL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EXT_STATUS_NO_MEMORY = common dso_local global i64 0, align 8
@EXT_STATUS_MAILBOX = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla2x00_read_fru_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_read_fru_status(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qla_status_reg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  %12 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %13 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %12, i32 0, i32 5
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %3, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = call %struct.TYPE_16__* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %4, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %5, align 8
  store i32 0, i32* %6, align 4
  %20 = load i32, i32* @DMA_POOL_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = bitcast i8* %24 to %struct.qla_status_reg*
  store %struct.qla_status_reg* %25, %struct.qla_status_reg** %9, align 8
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %27 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @dma_pool_alloc(i32 %28, i32 %29, i32* %10)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %1
  %34 = load i64, i64* @EXT_STATUS_NO_MEMORY, align 8
  %35 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %36 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %35, i32 0, i32 2
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %34, i64* %42, align 8
  br label %112

43:                                               ; preds = %1
  %44 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %45 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %49 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.qla_status_reg*, %struct.qla_status_reg** %9, align 8
  %53 = call i32 @sg_copy_to_buffer(i32 %47, i32 %51, %struct.qla_status_reg* %52, i32 16)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.qla_status_reg*, %struct.qla_status_reg** %9, align 8
  %58 = getelementptr inbounds %struct.qla_status_reg, %struct.qla_status_reg* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qla_status_reg*, %struct.qla_status_reg** %9, align 8
  %62 = getelementptr inbounds %struct.qla_status_reg, %struct.qla_status_reg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qla_status_reg*, %struct.qla_status_reg** %9, align 8
  %66 = getelementptr inbounds %struct.qla_status_reg, %struct.qla_status_reg* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qla2x00_read_sfp(%struct.TYPE_16__* %54, i32 %55, i32* %56, i32 %60, i32 %64, i32 4, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qla_status_reg*, %struct.qla_status_reg** %9, align 8
  %73 = getelementptr inbounds %struct.qla_status_reg, %struct.qla_status_reg* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %43
  %77 = load i64, i64* @EXT_STATUS_MAILBOX, align 8
  %78 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %79 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %78, i32 0, i32 2
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  store i64 %77, i64* %85, align 8
  br label %105

86:                                               ; preds = %43
  %87 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %88 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %92 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.qla_status_reg*, %struct.qla_status_reg** %9, align 8
  %96 = call i32 @sg_copy_from_buffer(i32 %90, i32 %94, %struct.qla_status_reg* %95, i32 16)
  %97 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %98 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %97, i32 0, i32 2
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %86, %76
  %106 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %107 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @dma_pool_free(i32 %108, i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %33
  %113 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %114 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %113, i32 0, i32 0
  store i32 4, i32* %114, align 8
  %115 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %116 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %115, i32 0, i32 2
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  store i32 16, i32* %118, align 8
  %119 = load i32, i32* @DID_OK, align 4
  %120 = shl i32 %119, 16
  %121 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %122 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %121, i32 0, i32 2
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 4
  %125 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %126 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %125, i32 0, i32 1
  %127 = bitcast {}** %126 to i32 (%struct.fc_bsg_job*)**
  %128 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %127, align 8
  %129 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %130 = call i32 %128(%struct.fc_bsg_job* %129)
  %131 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %131)
  ret i32 0
}

declare dso_local %struct.TYPE_16__* @shost_priv(%struct.Scsi_Host*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.qla_status_reg*, i32) #1

declare dso_local i32 @qla2x00_read_sfp(%struct.TYPE_16__*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, %struct.qla_status_reg*, i32) #1

declare dso_local i32 @dma_pool_free(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
