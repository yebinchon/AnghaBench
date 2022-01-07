; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_adv_build_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_adv_build_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asc_board = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, i32*, %struct.scsi_cmnd*, i32 }
%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_10__*, i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i8*, i64, i32*, i64, i32*, i32, i8*, i32, i32, i32*, i32*, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"no free adv_req_t\0A\00", align 1
@adv_build_noreq = common dso_local global i32 0, align 4
@ASC_BUSY = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@ADV_MAX_SG_LIST = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"use_sg %d > ADV_MAX_SG_LIST %d\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@ASC_ERROR = common dso_local global i32 0, align 4
@ADV_SUCCESS = common dso_local global i32 0, align 4
@xfer_elem = common dso_local global i32 0, align 4
@xfer_cnt = common dso_local global i32 0, align 4
@ASC_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asc_board*, %struct.scsi_cmnd*, %struct.TYPE_12__**)* @adv_build_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv_build_req(%struct.asc_board* %0, %struct.scsi_cmnd* %1, %struct.TYPE_12__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asc_board*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.asc_board* %0, %struct.asc_board** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %7, align 8
  %13 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %14 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = load i32, i32* @adv_build_noreq, align 4
  %25 = call i32 @ASC_STATS(%struct.TYPE_13__* %23, i32 %24)
  %26 = load i32, i32* @ASC_BUSY, align 4
  store i32 %26, i32* %4, align 4
  br label %241

27:                                               ; preds = %3
  %28 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %29 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %8, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %35 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %34, i32 0, i32 0
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %37, align 8
  br label %38

38:                                               ; preds = %27
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = call i64 @ADV_32BALIGN(i32* %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %9, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 13
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 14
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 15
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = call i32 @ADV_VADDR_TO_U32(%struct.TYPE_11__* %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store %struct.scsi_cmnd* %53, %struct.scsi_cmnd** %55, align 8
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %86, %38
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 12
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i1 [ false, %61 ], [ %69, %67 ]
  br i1 %71, label %72, label %89

72:                                               ; preds = %70
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 11
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  br label %86

86:                                               ; preds = %72
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %61

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %111, %89
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 10
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %107, 12
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %103, i32* %110, align 4
  br label %111

111:                                              ; preds = %96
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %90

114:                                              ; preds = %90
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %116 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %115, i32 0, i32 2
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 9
  store i32 %119, i32* %121, align 4
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %123 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %122, i32 0, i32 2
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 8
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %130 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = call i32 @virt_to_bus(i32* %132)
  %134 = call i8* @cpu_to_le32(i32 %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 7
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %141 = call i32 @scsi_dma_map(%struct.scsi_cmnd* %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %114
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  store i32* null, i32** %146, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  store i8* null, i8** %148, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 5
  store i32* null, i32** %150, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 4
  store i64 0, i64* %152, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  store i32* null, i32** %154, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  store i64 0, i64* %156, align 8
  br label %221

157:                                              ; preds = %114
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* @ADV_MAX_SG_LIST, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %188

161:                                              ; preds = %157
  %162 = load i32, i32* @KERN_ERR, align 4
  %163 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %166 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %165, i32 0, i32 2
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @scmd_printk(i32 %162, %struct.scsi_cmnd* %163, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %164, i32 %171)
  %173 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %174 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %173)
  %175 = load i32, i32* @DID_ERROR, align 4
  %176 = call i32 @HOST_BYTE(i32 %175)
  %177 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %178 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %180 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %179, i32 0, i32 0
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  store %struct.TYPE_11__* %181, %struct.TYPE_11__** %183, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %185 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %186 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %185, i32 0, i32 0
  store %struct.TYPE_11__* %184, %struct.TYPE_11__** %186, align 8
  %187 = load i32, i32* @ASC_ERROR, align 4
  store i32 %187, i32* %4, align 4
  br label %241

188:                                              ; preds = %157
  %189 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %190 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %189)
  %191 = call i8* @cpu_to_le32(i32 %190)
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  store i8* %191, i8** %193, align 8
  %194 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %196 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @adv_get_sglist(%struct.asc_board* %194, %struct.TYPE_11__* %195, %struct.scsi_cmnd* %196, i32 %197)
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @ADV_SUCCESS, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %212

202:                                              ; preds = %188
  %203 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %204 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %203, i32 0, i32 0
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  store %struct.TYPE_11__* %205, %struct.TYPE_11__** %207, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %209 = load %struct.asc_board*, %struct.asc_board** %5, align 8
  %210 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %209, i32 0, i32 0
  store %struct.TYPE_11__* %208, %struct.TYPE_11__** %210, align 8
  %211 = load i32, i32* %11, align 4
  store i32 %211, i32* %4, align 4
  br label %241

212:                                              ; preds = %188
  %213 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %214 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %213, i32 0, i32 2
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = load i32, i32* @xfer_elem, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @ASC_STATS_ADD(%struct.TYPE_13__* %217, i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %212, %144
  %222 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %223 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %222, i32 0, i32 2
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %225, align 8
  %227 = load i32, i32* @xfer_cnt, align 4
  %228 = call i32 @ASC_STATS(%struct.TYPE_13__* %226, i32 %227)
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %230 = call i32 @ASC_DBG_PRT_ADV_SCSI_REQ_Q(i32 2, %struct.TYPE_12__* %229)
  %231 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %232 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %235 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @ASC_DBG_PRT_CDB(i32 1, i32* %233, i32 %236)
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %239 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %238, %struct.TYPE_12__** %239, align 8
  %240 = load i32, i32* @ASC_NOERROR, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %221, %202, %161, %17
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @ASC_DBG(i32, i8*) #1

declare dso_local i32 @ASC_STATS(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ADV_32BALIGN(i32*) #1

declare dso_local i32 @ADV_VADDR_TO_U32(%struct.TYPE_11__*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @virt_to_bus(i32*) #1

declare dso_local i32 @scsi_dma_map(%struct.scsi_cmnd*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, i32) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @HOST_BYTE(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @adv_get_sglist(%struct.asc_board*, %struct.TYPE_11__*, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @ASC_STATS_ADD(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ASC_DBG_PRT_ADV_SCSI_REQ_Q(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @ASC_DBG_PRT_CDB(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
