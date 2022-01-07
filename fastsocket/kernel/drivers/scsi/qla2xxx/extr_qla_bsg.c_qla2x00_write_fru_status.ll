; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_write_fru_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_write_fru_status.c"
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
%struct.qla_status_reg = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@DMA_POOL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EXT_STATUS_NO_MEMORY = common dso_local global i64 0, align 8
@EXT_STATUS_MAILBOX = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla2x00_write_fru_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_write_fru_status(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qla_status_reg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  %12 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %13 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %12, i32 0, i32 4
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %3, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = call %struct.TYPE_14__* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %4, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
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
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %34, i64* %42, align 8
  br label %102

43:                                               ; preds = %1
  %44 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %45 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %49 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.qla_status_reg*, %struct.qla_status_reg** %9, align 8
  %53 = call i32 @sg_copy_to_buffer(i32 %47, i32 %51, %struct.qla_status_reg* %52, i32 16)
  %54 = load %struct.qla_status_reg*, %struct.qla_status_reg** %9, align 8
  %55 = getelementptr inbounds %struct.qla_status_reg, %struct.qla_status_reg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load %struct.qla_status_reg*, %struct.qla_status_reg** %9, align 8
  %62 = getelementptr inbounds %struct.qla_status_reg, %struct.qla_status_reg* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qla_status_reg*, %struct.qla_status_reg** %9, align 8
  %66 = getelementptr inbounds %struct.qla_status_reg, %struct.qla_status_reg* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.qla_status_reg*, %struct.qla_status_reg** %9, align 8
  %70 = getelementptr inbounds %struct.qla_status_reg, %struct.qla_status_reg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @qla2x00_write_sfp(%struct.TYPE_14__* %58, i32 %59, i32* %60, i32 %64, i32 %68, i32 4, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %43
  %77 = load i64, i64* @EXT_STATUS_MAILBOX, align 8
  %78 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %79 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %78, i32 0, i32 2
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  store i64 %77, i64* %85, align 8
  br label %95

86:                                               ; preds = %43
  %87 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %88 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %87, i32 0, i32 2
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %86, %76
  %96 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %97 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @dma_pool_free(i32 %98, i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %95, %33
  %103 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %104 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %103, i32 0, i32 0
  store i32 4, i32* %104, align 8
  %105 = load i32, i32* @DID_OK, align 4
  %106 = shl i32 %105, 16
  %107 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %108 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %107, i32 0, i32 2
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 8
  %111 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %112 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %111, i32 0, i32 1
  %113 = bitcast {}** %112 to i32 (%struct.fc_bsg_job*)**
  %114 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %113, align 8
  %115 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %116 = call i32 %114(%struct.fc_bsg_job* %115)
  %117 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %117)
  ret i32 0
}

declare dso_local %struct.TYPE_14__* @shost_priv(%struct.Scsi_Host*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.qla_status_reg*, i32) #1

declare dso_local i32 @qla2x00_write_sfp(%struct.TYPE_14__*, i32, i32*, i32, i32, i32, i32) #1

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
