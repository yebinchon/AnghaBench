; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_ioafp_identify_hrrq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_ioafp_identify_hrrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { {}*, %struct.ipr_ioarcb, %struct.ipr_ioa_cfg* }
%struct.ipr_ioarcb = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.ipr_ioa_cfg = type { i64, i64, i32, i64, %struct.ipr_hrr_queue*, %struct.TYPE_3__* }
%struct.ipr_hrr_queue = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Starting IOA initialization sequence.\0A\00", align 1
@IPR_ID_HOST_RR_Q = common dso_local global i32 0, align 4
@IPR_IOA_RES_HANDLE = common dso_local global i32 0, align 4
@IPR_RQTYPE_IOACMD = common dso_local global i32 0, align 4
@IPR_ID_HRRQ_SELE_ENABLE = common dso_local global i32 0, align 4
@ipr_reset_ioa_job = common dso_local global i32 0, align 4
@ipr_timeout = common dso_local global i32 0, align 4
@IPR_INTERNAL_TIMEOUT = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_ioafp_identify_hrrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_ioafp_identify_hrrq(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca %struct.ipr_ioarcb*, align 8
  %6 = alloca %struct.ipr_hrr_queue*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %3, align 8
  %7 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %7, i32 0, i32 2
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  store %struct.ipr_ioa_cfg* %9, %struct.ipr_ioa_cfg** %4, align 8
  %10 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %10, i32 0, i32 1
  store %struct.ipr_ioarcb* %11, %struct.ipr_ioarcb** %5, align 8
  %12 = load i32, i32* @ENTER, align 4
  %13 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.ipr_cmnd*)**
  store i32 (%struct.ipr_cmnd*)* @ipr_ioafp_std_inquiry, i32 (%struct.ipr_cmnd*)** %15, align 8
  %16 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %17 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %16, i32 0, i32 5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @dev_info(i32* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %263

28:                                               ; preds = %1
  %29 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %29, i32 0, i32 4
  %31 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %30, align 8
  %32 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %33 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %31, i64 %34
  store %struct.ipr_hrr_queue* %35, %struct.ipr_hrr_queue** %6, align 8
  %36 = load i32, i32* @IPR_ID_HOST_RR_Q, align 4
  %37 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %38 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %36, i32* %41, align 4
  %42 = load i32, i32* @IPR_IOA_RES_HANDLE, align 4
  %43 = call i32 @cpu_to_be32(i32 %42)
  %44 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %45 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @IPR_RQTYPE_IOACMD, align 4
  %47 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %48 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %51 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %28
  %55 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %56 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %28
  %61 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %62 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32, i32* @IPR_ID_HRRQ_SELE_ENABLE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %69 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %67
  store i32 %74, i32* %72, align 4
  br label %84

75:                                               ; preds = %60
  %76 = load i32, i32* @IPR_ID_HRRQ_SELE_ENABLE, align 4
  %77 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %78 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %76
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %75, %65
  %85 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %86 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = ashr i32 %88, 24
  %90 = and i32 %89, 255
  %91 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %92 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %90, i32* %95, align 4
  %96 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %97 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = ashr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %103 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  store i32 %101, i32* %106, align 4
  %107 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %108 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 255
  %113 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %114 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  store i32 %112, i32* %117, align 4
  %118 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %119 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = and i32 %121, 255
  %123 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %124 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 5
  store i32 %122, i32* %127, align 4
  %128 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %129 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = mul i64 4, %131
  %133 = lshr i64 %132, 8
  %134 = and i64 %133, 255
  %135 = trunc i64 %134 to i32
  %136 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %137 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 7
  store i32 %135, i32* %140, align 4
  %141 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %142 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = mul i64 4, %144
  %146 = and i64 %145, 255
  %147 = trunc i64 %146 to i32
  %148 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %149 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 8
  store i32 %147, i32* %152, align 4
  %153 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %154 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @IPR_ID_HRRQ_SELE_ENABLE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %84
  %163 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %164 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %168 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 9
  store i32 %166, i32* %171, align 4
  br label %172

172:                                              ; preds = %162, %84
  %173 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %174 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %222

177:                                              ; preds = %172
  %178 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %179 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = ashr i32 %181, 56
  %183 = and i32 %182, 255
  %184 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %185 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 10
  store i32 %183, i32* %188, align 4
  %189 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %190 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = ashr i32 %192, 48
  %194 = and i32 %193, 255
  %195 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %196 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 11
  store i32 %194, i32* %199, align 4
  %200 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %201 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = ashr i32 %203, 40
  %205 = and i32 %204, 255
  %206 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %207 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 12
  store i32 %205, i32* %210, align 4
  %211 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %6, align 8
  %212 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  %215 = ashr i32 %214, 32
  %216 = and i32 %215, 255
  %217 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %218 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 13
  store i32 %216, i32* %221, align 4
  br label %222

222:                                              ; preds = %177, %172
  %223 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %224 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @IPR_ID_HRRQ_SELE_ENABLE, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %222
  %233 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %234 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = trunc i64 %235 to i32
  %237 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %5, align 8
  %238 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 14
  store i32 %236, i32* %241, align 4
  br label %242

242:                                              ; preds = %232, %222
  %243 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %244 = load i32, i32* @ipr_reset_ioa_job, align 4
  %245 = load i32, i32* @ipr_timeout, align 4
  %246 = load i32, i32* @IPR_INTERNAL_TIMEOUT, align 4
  %247 = call i32 @ipr_do_req(%struct.ipr_cmnd* %243, i32 %244, i32 %245, i32 %246)
  %248 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %249 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %249, align 8
  %252 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %253 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp ult i64 %251, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %242
  %257 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %258 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %257, i32 0, i32 0
  %259 = bitcast {}** %258 to i32 (%struct.ipr_cmnd*)**
  store i32 (%struct.ipr_cmnd*)* @ipr_ioafp_identify_hrrq, i32 (%struct.ipr_cmnd*)** %259, align 8
  br label %260

260:                                              ; preds = %256, %242
  %261 = load i32, i32* @LEAVE, align 4
  %262 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %262, i32* %2, align 4
  br label %266

263:                                              ; preds = %1
  %264 = load i32, i32* @LEAVE, align 4
  %265 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %263, %260
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @ipr_ioafp_std_inquiry(%struct.ipr_cmnd*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
