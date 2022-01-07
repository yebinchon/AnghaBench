; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_walk_and_build_sglist_no_difb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_walk_and_build_sglist_no_difb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.dsd_dma = type { i64, i32, i8* }
%struct.scatterlist = type { i32 }
%struct.qla2_sgx = type { i64, i64, %struct.TYPE_10__*, i32, i32 }
%struct.scsi_cmnd = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.crc_context = type { i32 }

@QLA_DSDS_PER_IOCB = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SRB_CRC_CTX_DSD_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, %struct.TYPE_10__*, i64*, i64)* @qla24xx_walk_and_build_sglist_no_difb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_walk_and_build_sglist_no_difb(%struct.qla_hw_data* %0, %struct.TYPE_10__* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.dsd_dma*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.qla2_sgx, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.scsi_cmnd*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %24 = load i64*, i64** %8, align 8
  store i64* %24, i64** %15, align 8
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %16, align 8
  store i64 0, i64* %22, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_10__* %26)
  store %struct.scsi_cmnd* %27, %struct.scsi_cmnd** %23, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %23, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %17, align 8
  %33 = call i32 @memset(%struct.qla2_sgx* %19, i32 0, i32 32)
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %23, align 8
  %35 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %34)
  %36 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %19, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %23, align 8
  %38 = call i32 @scsi_sglist(%struct.scsi_cmnd* %37)
  %39 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %19, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %19, i32 0, i32 2
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %41, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %23, align 8
  %43 = call %struct.scatterlist* @scsi_prot_sglist(%struct.scsi_cmnd* %42)
  store %struct.scatterlist* %43, %struct.scatterlist** %14, align 8
  br label %44

44:                                               ; preds = %170, %4
  %45 = load i64, i64* %17, align 8
  %46 = call i64 @qla24xx_get_one_block_sg(i64 %45, %struct.qla2_sgx* %19, i64* %18)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %171

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %19, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %20, align 8
  %51 = getelementptr inbounds %struct.qla2_sgx, %struct.qla2_sgx* %19, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %21, align 8
  br label %53

53:                                               ; preds = %169, %48
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %132

56:                                               ; preds = %53
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* @QLA_DSDS_PER_IOCB, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* @QLA_DSDS_PER_IOCB, align 8
  br label %64

62:                                               ; preds = %56
  %63 = load i64, i64* %16, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  %69 = mul nsw i32 %68, 12
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %12, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %16, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* %16, align 8
  %75 = load i32, i32* @GFP_ATOMIC, align 4
  %76 = call %struct.dsd_dma* @kzalloc(i32 24, i32 %75)
  store %struct.dsd_dma* %76, %struct.dsd_dma** %13, align 8
  %77 = load %struct.dsd_dma*, %struct.dsd_dma** %13, align 8
  %78 = icmp ne %struct.dsd_dma* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  br label %178

80:                                               ; preds = %64
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %82 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @GFP_ATOMIC, align 4
  %85 = load %struct.dsd_dma*, %struct.dsd_dma** %13, align 8
  %86 = getelementptr inbounds %struct.dsd_dma, %struct.dsd_dma* %85, i32 0, i32 0
  %87 = call i8* @dma_pool_alloc(i32 %83, i32 %84, i64* %86)
  store i8* %87, i8** %10, align 8
  %88 = load %struct.dsd_dma*, %struct.dsd_dma** %13, align 8
  %89 = getelementptr inbounds %struct.dsd_dma, %struct.dsd_dma* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %80
  %93 = load %struct.dsd_dma*, %struct.dsd_dma** %13, align 8
  %94 = call i32 @kfree(%struct.dsd_dma* %93)
  store i32 1, i32* %5, align 4
  br label %178

95:                                               ; preds = %80
  %96 = load %struct.dsd_dma*, %struct.dsd_dma** %13, align 8
  %97 = getelementptr inbounds %struct.dsd_dma, %struct.dsd_dma* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.crc_context*
  %104 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %103, i32 0, i32 0
  %105 = call i32 @list_add_tail(i32* %97, i32* %104)
  %106 = load i32, i32* @SRB_CRC_CTX_DSD_VALID, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.dsd_dma*, %struct.dsd_dma** %13, align 8
  %112 = getelementptr inbounds %struct.dsd_dma, %struct.dsd_dma* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @LSD(i64 %113)
  %115 = call i8* @cpu_to_le32(i64 %114)
  %116 = ptrtoint i8* %115 to i64
  %117 = load i64*, i64** %15, align 8
  %118 = getelementptr inbounds i64, i64* %117, i32 1
  store i64* %118, i64** %15, align 8
  store i64 %116, i64* %117, align 8
  %119 = load %struct.dsd_dma*, %struct.dsd_dma** %13, align 8
  %120 = getelementptr inbounds %struct.dsd_dma, %struct.dsd_dma* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @MSD(i64 %121)
  %123 = call i8* @cpu_to_le32(i64 %122)
  %124 = ptrtoint i8* %123 to i64
  %125 = load i64*, i64** %15, align 8
  %126 = getelementptr inbounds i64, i64* %125, i32 1
  store i64* %126, i64** %15, align 8
  store i64 %124, i64* %125, align 8
  %127 = load i64, i64* %12, align 8
  %128 = load i64*, i64** %15, align 8
  %129 = getelementptr inbounds i64, i64* %128, i32 1
  store i64* %129, i64** %15, align 8
  store i64 %127, i64* %128, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = bitcast i8* %130 to i64*
  store i64* %131, i64** %15, align 8
  br label %132

132:                                              ; preds = %95, %53
  %133 = load i64, i64* %20, align 8
  %134 = call i64 @LSD(i64 %133)
  %135 = call i8* @cpu_to_le32(i64 %134)
  %136 = ptrtoint i8* %135 to i64
  %137 = load i64*, i64** %15, align 8
  %138 = getelementptr inbounds i64, i64* %137, i32 1
  store i64* %138, i64** %15, align 8
  store i64 %136, i64* %137, align 8
  %139 = load i64, i64* %20, align 8
  %140 = call i64 @MSD(i64 %139)
  %141 = call i8* @cpu_to_le32(i64 %140)
  %142 = ptrtoint i8* %141 to i64
  %143 = load i64*, i64** %15, align 8
  %144 = getelementptr inbounds i64, i64* %143, i32 1
  store i64* %144, i64** %15, align 8
  store i64 %142, i64* %143, align 8
  %145 = load i64, i64* %21, align 8
  %146 = call i8* @cpu_to_le32(i64 %145)
  %147 = ptrtoint i8* %146 to i64
  %148 = load i64*, i64** %15, align 8
  %149 = getelementptr inbounds i64, i64* %148, i32 1
  store i64* %149, i64** %15, align 8
  store i64 %147, i64* %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %11, align 4
  %152 = load i64, i64* %18, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %132
  %155 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %156 = call i64 @sg_dma_address(%struct.scatterlist* %155)
  %157 = load i64, i64* %22, align 8
  %158 = add nsw i64 %156, %157
  store i64 %158, i64* %20, align 8
  store i64 8, i64* %21, align 8
  %159 = load i64, i64* %21, align 8
  %160 = load i64, i64* %22, align 8
  %161 = add nsw i64 %160, %159
  store i64 %161, i64* %22, align 8
  %162 = load i64, i64* %22, align 8
  %163 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %164 = call i64 @sg_dma_len(%struct.scatterlist* %163)
  %165 = icmp eq i64 %162, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %154
  store i64 0, i64* %22, align 8
  %167 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %168 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %167)
  store %struct.scatterlist* %168, %struct.scatterlist** %14, align 8
  br label %169

169:                                              ; preds = %166, %154
  store i64 1, i64* %18, align 8
  br label %53

170:                                              ; preds = %132
  br label %44

171:                                              ; preds = %44
  %172 = load i64*, i64** %15, align 8
  %173 = getelementptr inbounds i64, i64* %172, i32 1
  store i64* %173, i64** %15, align 8
  store i64 0, i64* %172, align 8
  %174 = load i64*, i64** %15, align 8
  %175 = getelementptr inbounds i64, i64* %174, i32 1
  store i64* %175, i64** %15, align 8
  store i64 0, i64* %174, align 8
  %176 = load i64*, i64** %15, align 8
  %177 = getelementptr inbounds i64, i64* %176, i32 1
  store i64* %177, i64** %15, align 8
  store i64 0, i64* %176, align 8
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %171, %92, %79
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.qla2_sgx*, i32, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @qla24xx_get_one_block_sg(i64, %struct.qla2_sgx*, i64*) #1

declare dso_local %struct.dsd_dma* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_pool_alloc(i32, i32, i64*) #1

declare dso_local i32 @kfree(%struct.dsd_dma*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @LSD(i64) #1

declare dso_local i64 @MSD(i64) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
