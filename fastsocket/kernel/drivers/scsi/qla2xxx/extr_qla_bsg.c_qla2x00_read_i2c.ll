; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_read_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_read_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, {}*, %struct.TYPE_13__*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.Scsi_Host* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_14__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla_i2c_access = type { i32, i32, i32, i32, i32 }

@DMA_POOL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EXT_STATUS_NO_MEMORY = common dso_local global i64 0, align 8
@EXT_STATUS_MAILBOX = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla2x00_read_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_read_i2c(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qla_i2c_access*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  %12 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %13 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %12, i32 0, i32 5
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
  %25 = bitcast i8* %24 to %struct.qla_i2c_access*
  store %struct.qla_i2c_access* %25, %struct.qla_i2c_access** %9, align 8
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
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %34, i64* %42, align 8
  br label %116

43:                                               ; preds = %1
  %44 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %45 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %49 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %9, align 8
  %53 = call i32 @sg_copy_to_buffer(i32 %47, i32 %51, %struct.qla_i2c_access* %52, i32 20)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %9, align 8
  %58 = getelementptr inbounds %struct.qla_i2c_access, %struct.qla_i2c_access* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %9, align 8
  %61 = getelementptr inbounds %struct.qla_i2c_access, %struct.qla_i2c_access* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %9, align 8
  %64 = getelementptr inbounds %struct.qla_i2c_access, %struct.qla_i2c_access* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %9, align 8
  %67 = getelementptr inbounds %struct.qla_i2c_access, %struct.qla_i2c_access* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qla2x00_read_sfp(%struct.TYPE_14__* %54, i32 %55, i32* %56, i32 %59, i32 %62, i32 %65, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %43
  %73 = load i64, i64* @EXT_STATUS_MAILBOX, align 8
  %74 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %75 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %74, i32 0, i32 2
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  store i64 %73, i64* %81, align 8
  br label %109

82:                                               ; preds = %43
  %83 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %9, align 8
  %84 = getelementptr inbounds %struct.qla_i2c_access, %struct.qla_i2c_access* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %9, align 8
  %88 = getelementptr inbounds %struct.qla_i2c_access, %struct.qla_i2c_access* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @memcpy(i32 %85, i32* %86, i32 %89)
  %91 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %92 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %96 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.qla_i2c_access*, %struct.qla_i2c_access** %9, align 8
  %100 = call i32 @sg_copy_from_buffer(i32 %94, i32 %98, %struct.qla_i2c_access* %99, i32 20)
  %101 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %102 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %101, i32 0, i32 2
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %82, %72
  %110 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %111 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @dma_pool_free(i32 %112, i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %33
  %117 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %118 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %117, i32 0, i32 0
  store i32 4, i32* %118, align 8
  %119 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %120 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %119, i32 0, i32 2
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i32 20, i32* %122, align 8
  %123 = load i32, i32* @DID_OK, align 4
  %124 = shl i32 %123, 16
  %125 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %126 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %125, i32 0, i32 2
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
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

declare dso_local i32* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.qla_i2c_access*, i32) #1

declare dso_local i32 @qla2x00_read_sfp(%struct.TYPE_14__*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, %struct.qla_i2c_access*, i32) #1

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
