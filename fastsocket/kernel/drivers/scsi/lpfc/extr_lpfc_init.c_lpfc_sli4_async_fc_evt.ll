; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_async_fc_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_async_fc_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_acqe_fc_la = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@lpfc_trailer_type = common dso_local global i32 0, align 4
@LPFC_FC_LA_EVENT_TYPE_FC_LINK = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"2895 Non FC link Event detected.(%d)\0A\00", align 1
@LPFC_TRAILER_CODE_FC = common dso_local global i32 0, align 4
@lpfc_acqe_fc_la_speed = common dso_local global i32 0, align 4
@LPFC_ASYNC_LINK_DUPLEX_FULL = common dso_local global i32 0, align 4
@lpfc_acqe_fc_la_topology = common dso_local global i32 0, align 4
@lpfc_acqe_fc_la_att_type = common dso_local global i32 0, align 4
@lpfc_acqe_fc_la_port_type = common dso_local global i32 0, align 4
@lpfc_acqe_fc_la_port_number = common dso_local global i32 0, align 4
@lpfc_acqe_link_fault = common dso_local global i32 0, align 4
@lpfc_acqe_fc_la_llink_spd = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [120 x i8] c"2896 Async FC event - Speed:%dGBaud Topology:x%x LA Type:x%x Port Type:%d Port Number:%d Logical speed:%dMbps Fault:%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"2897 The mboxq allocation failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"2898 The lpfc_dmabuf allocation failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"2899 The mbuf allocation failed\0A\00", align 1
@LPFC_STOP_IOCB_EVENT = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i64 0, align 8
@lpfc_mbx_cmpl_read_topology = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_acqe_fc_la*)* @lpfc_sli4_async_fc_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_async_fc_evt(%struct.lpfc_hba* %0, %struct.lpfc_acqe_fc_la* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_acqe_fc_la*, align 8
  %5 = alloca %struct.lpfc_dmabuf*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_acqe_fc_la* %1, %struct.lpfc_acqe_fc_la** %4, align 8
  %8 = load i32, i32* @lpfc_trailer_type, align 4
  %9 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %10 = call i32 @bf_get(i32 %8, %struct.lpfc_acqe_fc_la* %9)
  %11 = load i32, i32* @LPFC_FC_LA_EVENT_TYPE_FC_LINK, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %15 = load i32, i32* @KERN_ERR, align 4
  %16 = load i32, i32* @LOG_SLI, align 4
  %17 = load i32, i32* @lpfc_trailer_type, align 4
  %18 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %19 = call i32 @bf_get(i32 %17, %struct.lpfc_acqe_fc_la* %18)
  %20 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %207

21:                                               ; preds = %2
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = load i32, i32* @LPFC_TRAILER_CODE_FC, align 4
  %24 = load i32, i32* @lpfc_acqe_fc_la_speed, align 4
  %25 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %26 = call i32 @bf_get(i32 %24, %struct.lpfc_acqe_fc_la* %25)
  %27 = call i32 @lpfc_sli4_port_speed_parse(%struct.lpfc_hba* %22, i32 %23, i32 %26)
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 6
  store i32 %27, i32* %31, align 8
  %32 = load i32, i32* @LPFC_ASYNC_LINK_DUPLEX_FULL, align 4
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 7
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @lpfc_acqe_fc_la_topology, align 4
  %38 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %39 = call i32 @bf_get(i32 %37, %struct.lpfc_acqe_fc_la* %38)
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load i32, i32* @lpfc_acqe_fc_la_att_type, align 4
  %45 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %46 = call i32 @bf_get(i32 %44, %struct.lpfc_acqe_fc_la* %45)
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @lpfc_acqe_fc_la_port_type, align 4
  %52 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %53 = call i32 @bf_get(i32 %51, %struct.lpfc_acqe_fc_la* %52)
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 8
  %58 = load i32, i32* @lpfc_acqe_fc_la_port_number, align 4
  %59 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %60 = call i32 @bf_get(i32 %58, %struct.lpfc_acqe_fc_la* %59)
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @lpfc_acqe_link_fault, align 4
  %66 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %67 = call i32 @bf_get(i32 %65, %struct.lpfc_acqe_fc_la* %66)
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  store i32 %67, i32* %71, align 8
  %72 = load i32, i32* @lpfc_acqe_fc_la_llink_spd, align 4
  %73 = load %struct.lpfc_acqe_fc_la*, %struct.lpfc_acqe_fc_la** %4, align 8
  %74 = call i32 @bf_get(i32 %72, %struct.lpfc_acqe_fc_la* %73)
  %75 = mul nsw i32 %74, 10
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 5
  store i32 %75, i32* %79, align 4
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %81 = load i32, i32* @KERN_INFO, align 4
  %82 = load i32, i32* @LOG_SLI, align 4
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %92, i32 %97, i32 %102, i32 %107, i32 %112, i32 %117)
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i64 @mempool_alloc(i32 %121, i32 %122)
  %124 = inttoptr i64 %123 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %124, %struct.TYPE_15__** %6, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = icmp ne %struct.TYPE_15__* %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %21
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %129 = load i32, i32* @KERN_ERR, align 4
  %130 = load i32, i32* @LOG_SLI, align 4
  %131 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %128, i32 %129, i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %207

132:                                              ; preds = %21
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call %struct.lpfc_dmabuf* @kmalloc(i32 8, i32 %133)
  store %struct.lpfc_dmabuf* %134, %struct.lpfc_dmabuf** %5, align 8
  %135 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %136 = icmp ne %struct.lpfc_dmabuf* %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %139 = load i32, i32* @KERN_ERR, align 4
  %140 = load i32, i32* @LOG_SLI, align 4
  %141 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %138, i32 %139, i32 %140, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %201

142:                                              ; preds = %132
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %144 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %145 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %144, i32 0, i32 1
  %146 = call i32 @lpfc_mbuf_alloc(%struct.lpfc_hba* %143, i32 0, i32* %145)
  %147 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %148 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %150 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %142
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %155 = load i32, i32* @KERN_ERR, align 4
  %156 = load i32, i32* @LOG_SLI, align 4
  %157 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %154, i32 %155, i32 %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %198

158:                                              ; preds = %142
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %160 = call i32 @lpfc_els_flush_all_cmd(%struct.lpfc_hba* %159)
  %161 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %163 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load i64, i64* @LPFC_ELS_RING, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %161
  store i32 %170, i32* %168, align 4
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %172 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  %177 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %179 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %180 = call i32 @lpfc_read_topology(%struct.lpfc_hba* %177, %struct.TYPE_15__* %178, %struct.lpfc_dmabuf* %179)
  %181 = load i32, i32* @lpfc_mbx_cmpl_read_topology, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %185 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 4
  %189 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %191 = load i32, i32* @MBX_NOWAIT, align 4
  %192 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %189, %struct.TYPE_15__* %190, i32 %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %158
  br label %198

197:                                              ; preds = %158
  br label %207

198:                                              ; preds = %196, %153
  %199 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %200 = call i32 @kfree(%struct.lpfc_dmabuf* %199)
  br label %201

201:                                              ; preds = %198, %137
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %204 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @mempool_free(%struct.TYPE_15__* %202, i32 %205)
  br label %207

207:                                              ; preds = %201, %197, %127, %13
  ret void
}

declare dso_local i32 @bf_get(i32, %struct.lpfc_acqe_fc_la*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli4_port_speed_parse(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @lpfc_els_flush_all_cmd(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_read_topology(%struct.lpfc_hba*, %struct.TYPE_15__*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
