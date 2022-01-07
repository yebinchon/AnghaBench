; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_bg_scsi_prep_dma_buf_s3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_bg_scsi_prep_dma_buf_s3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.lpfc_scsi_buf = type { i32, i32, %struct.TYPE_8__, %struct.ulp_bde64*, %struct.fcp_cmnd*, %struct.scsi_cmnd* }
%struct.TYPE_8__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ulp_bde64 = type { i32 }
%struct.fcp_cmnd = type { i32 }
%struct.scsi_cmnd = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"9022 Unexpected protection group %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"9023 Cannot setup S/G List for HBAIO segs %d/%d BPL %d SCSI %d: %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_scsi_buf*)* @lpfc_bg_scsi_prep_dma_buf_s3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bg_scsi_prep_dma_buf_s3(%struct.lpfc_hba* %0, %struct.lpfc_scsi_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_scsi_buf*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.fcp_cmnd*, align 8
  %8 = alloca %struct.ulp_bde64*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_scsi_buf* %1, %struct.lpfc_scsi_buf** %5, align 8
  %16 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %16, i32 0, i32 5
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %17, align 8
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %6, align 8
  %19 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %19, i32 0, i32 4
  %21 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %20, align 8
  store %struct.fcp_cmnd* %21, %struct.fcp_cmnd** %7, align 8
  %22 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %22, i32 0, i32 3
  %24 = load %struct.ulp_bde64*, %struct.ulp_bde64** %23, align 8
  store %struct.ulp_bde64* %24, %struct.ulp_bde64** %8, align 8
  %25 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %9, align 8
  store i32 0, i32* %10, align 4
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %31 = load %struct.ulp_bde64*, %struct.ulp_bde64** %8, align 8
  %32 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %31, i64 2
  store %struct.ulp_bde64* %32, %struct.ulp_bde64** %8, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %34 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %154

36:                                               ; preds = %2
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %42 = call i32 @scsi_sglist(%struct.scsi_cmnd* %41)
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %44 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %43)
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @dma_map_sg(i32* %40, i32 %42, i64 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %237

54:                                               ; preds = %36
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %57 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %59 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %188

66:                                               ; preds = %54
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %69 = call i32 @lpfc_prot_group_type(%struct.lpfc_hba* %67, %struct.scsi_cmnd* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  switch i32 %70, label %143 [
    i32 128, label %71
    i32 130, label %91
    i32 129, label %142
  ]

71:                                               ; preds = %66
  %72 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %73 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 2
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %188

81:                                               ; preds = %71
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %84 = load %struct.ulp_bde64*, %struct.ulp_bde64** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @lpfc_bg_setup_bpl(%struct.lpfc_hba* %82, %struct.scsi_cmnd* %83, %struct.ulp_bde64* %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 2
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %188

90:                                               ; preds = %81
  br label %153

91:                                               ; preds = %66
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 2
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %97 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %96)
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %99 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %98)
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @dma_map_sg(i32* %95, i32 %97, i64 %99, i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %91
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %110 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %109)
  store i32 1, i32* %3, align 4
  br label %237

111:                                              ; preds = %91
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %114 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %116 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %117, 4
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 2
  %123 = icmp sgt i32 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %188

125:                                              ; preds = %111
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %128 = load %struct.ulp_bde64*, %struct.ulp_bde64** %8, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @lpfc_bg_setup_bpl_prot(%struct.lpfc_hba* %126, %struct.scsi_cmnd* %127, %struct.ulp_bde64* %128, i32 %129, i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 3
  br i1 %133, label %140, label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134, %125
  br label %188

141:                                              ; preds = %134
  br label %153

142:                                              ; preds = %66
  br label %143

143:                                              ; preds = %66, %142
  %144 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %145 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %144)
  %146 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %147 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %149 = load i32, i32* @KERN_ERR, align 4
  %150 = load i32, i32* @LOG_FCP, align 4
  %151 = load i32, i32* %14, align 4
  %152 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %151)
  store i32 1, i32* %3, align 4
  br label %237

153:                                              ; preds = %141, %90
  br label %154

154:                                              ; preds = %153, %2
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  store i32 8, i32* %159, align 4
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = add i64 %169, %162
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  store i32 1, i32* %175, align 4
  %176 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %177 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %178 = call i32 @lpfc_bg_scsi_adjust_dl(%struct.lpfc_hba* %176, %struct.lpfc_scsi_buf* %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @be32_to_cpu(i32 %179)
  %181 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %7, align 8
  %182 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  store i32 %183, i32* %187, align 4
  store i32 0, i32* %3, align 4
  br label %237

188:                                              ; preds = %140, %124, %89, %80, %65
  %189 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %190 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %195 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %194)
  br label %196

196:                                              ; preds = %193, %188
  %197 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %198 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %196
  %202 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %203 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %202, i32 0, i32 2
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %207 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %206)
  %208 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %209 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %208)
  %210 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %211 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @dma_unmap_sg(i32* %205, i32 %207, i64 %209, i32 %212)
  br label %214

214:                                              ; preds = %201, %196
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %216 = load i32, i32* @KERN_ERR, align 4
  %217 = load i32, i32* @LOG_FCP, align 4
  %218 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %219 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %222 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %225 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %228 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %10, align 4
  %232 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %215, i32 %216, i32 %217, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %220, i32 %223, i32 %226, i32 %229, i32 %230, i32 %231)
  %233 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %234 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %233, i32 0, i32 0
  store i32 0, i32* %234, align 8
  %235 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %5, align 8
  %236 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %235, i32 0, i32 1
  store i32 0, i32* %236, align 4
  store i32 1, i32* %3, align 4
  br label %237

237:                                              ; preds = %214, %154, %143, %108, %53
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_prot_group_type(%struct.lpfc_hba*, %struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_bg_setup_bpl(%struct.lpfc_hba*, %struct.scsi_cmnd*, %struct.ulp_bde64*, i32) #1

declare dso_local i32 @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_bg_setup_bpl_prot(%struct.lpfc_hba*, %struct.scsi_cmnd*, %struct.ulp_bde64*, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_bg_scsi_adjust_dl(%struct.lpfc_hba*, %struct.lpfc_scsi_buf*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
