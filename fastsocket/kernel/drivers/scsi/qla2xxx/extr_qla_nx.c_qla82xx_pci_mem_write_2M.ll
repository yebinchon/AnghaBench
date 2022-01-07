; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_pci_mem_write_2M.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_pci_mem_write_2M.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLA82XX_ADDR_QDR_NET = common dso_local global i32 0, align 4
@QLA82XX_P3_ADDR_QDR_NET_MAX = common dso_local global i32 0, align 4
@QLA82XX_CRB_QDR_NET = common dso_local global i32 0, align 4
@QLA82XX_CRB_DDR_NET = common dso_local global i32 0, align 4
@MIU_TEST_AGT_ADDR_LO = common dso_local global i32 0, align 4
@MIU_TEST_AGT_ADDR_HI = common dso_local global i32 0, align 4
@MIU_TEST_AGT_WRDATA_LO = common dso_local global i32 0, align 4
@MIU_TEST_AGT_WRDATA_HI = common dso_local global i32 0, align 4
@MIU_TEST_AGT_WRDATA_UPPER_LO = common dso_local global i32 0, align 4
@MIU_TEST_AGT_WRDATA_UPPER_HI = common dso_local global i32 0, align 4
@MIU_TA_CTL_ENABLE = common dso_local global i32 0, align 4
@MIU_TA_CTL_WRITE = common dso_local global i32 0, align 4
@MIU_TEST_AGT_CTRL = common dso_local global i32 0, align 4
@MIU_TA_CTL_START = common dso_local global i32 0, align 4
@MAX_CTL_CHECK = common dso_local global i32 0, align 4
@MIU_TA_CTL_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to write through agent.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i32, i8*, i32)* @qla82xx_pci_mem_write_2M to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_pci_mem_write_2M(%struct.qla_hw_data* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [2 x i32], align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %24 = bitcast [2 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 8, i1 false)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @QLA82XX_ADDR_QDR_NET, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @QLA82XX_P3_ADDR_QDR_NET_MAX, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @QLA82XX_CRB_QDR_NET, align 4
  store i32 %33, i32* %21, align 4
  br label %48

34:                                               ; preds = %28, %4
  %35 = load i32, i32* @QLA82XX_CRB_DDR_NET, align 4
  store i32 %35, i32* %21, align 4
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @qla82xx_pci_mem_bound_check(%struct.qla_hw_data* %36, i32 %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @qla82xx_pci_mem_write_direct(%struct.qla_hw_data* %42, i32 %43, i8* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %323

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 7
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %15, align 4
  %53 = sub nsw i32 8, %52
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  br label %60

57:                                               ; preds = %48
  %58 = load i32, i32* %15, align 4
  %59 = sub nsw i32 8, %58
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi i32 [ %56, %55 ], [ %59, %57 ]
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %63, %65
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, -16
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 15
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = ashr i32 %74, 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  store i32 4, i32* %17, align 4
  store i32 2, i32* %16, align 4
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 15
  %79 = sdiv i32 %78, 8
  store i32 %79, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %100, %60
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %17, align 4
  %89 = shl i32 %87, %88
  %90 = add nsw i32 %86, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %16, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %94
  %96 = call i64 @qla82xx_pci_mem_read_2M(%struct.qla_hw_data* %85, i32 %90, i32* %95, i32 8)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  store i32 -1, i32* %5, align 4
  br label %323

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %80

103:                                              ; preds = %80
  %104 = load i32, i32* %9, align 4
  switch i32 %104, label %118 [
    i32 1, label %105
    i32 2, label %109
    i32 4, label %113
    i32 8, label %117
  ]

105:                                              ; preds = %103
  %106 = load i8*, i8** %8, align 8
  %107 = bitcast i8* %106 to i32*
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %22, align 4
  br label %122

109:                                              ; preds = %103
  %110 = load i8*, i8** %8, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %22, align 4
  br label %122

113:                                              ; preds = %103
  %114 = load i8*, i8** %8, align 8
  %115 = bitcast i8* %114 to i32*
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %22, align 4
  br label %122

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %103, %117
  %119 = load i8*, i8** %8, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %22, align 4
  br label %122

122:                                              ; preds = %118, %113, %109, %105
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 8
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %129
  store i32 %127, i32* %130, align 4
  br label %159

131:                                              ; preds = %122
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %133, 8
  %135 = zext i32 %134 to i64
  %136 = shl i64 -1, %135
  %137 = xor i64 %136, -1
  %138 = load i32, i32* %15, align 4
  %139 = mul nsw i32 %138, 8
  %140 = zext i32 %139 to i64
  %141 = shl i64 %137, %140
  %142 = xor i64 %141, -1
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = and i64 %147, %142
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %15, align 4
  %152 = mul nsw i32 %151, 8
  %153 = shl i32 %150, %152
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %153
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %131, %126
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %189

163:                                              ; preds = %159
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 %165, 8
  %167 = zext i32 %166 to i64
  %168 = shl i64 -1, %167
  %169 = xor i64 %168, -1
  %170 = load i32, i32* %18, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = and i64 %175, %169
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 4
  %178 = load i32, i32* %22, align 4
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %180, 8
  %182 = ashr i32 %178, %181
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %182
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %163, %159
  store i32 0, i32* %10, align 4
  br label %190

190:                                              ; preds = %318, %189
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %13, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %321

194:                                              ; preds = %190
  %195 = load i32, i32* %20, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* %17, align 4
  %198 = shl i32 %196, %197
  %199 = add nsw i32 %195, %198
  store i32 %199, i32* %19, align 4
  %200 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* @MIU_TEST_AGT_ADDR_LO, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* %19, align 4
  %205 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %200, i32 %203, i32 %204)
  store i32 0, i32* %19, align 4
  %206 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %207 = load i32, i32* %21, align 4
  %208 = load i32, i32* @MIU_TEST_AGT_ADDR_HI, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %19, align 4
  %211 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %206, i32 %209, i32 %210)
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %16, align 4
  %214 = mul nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %19, align 4
  %218 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* @MIU_TEST_AGT_WRDATA_LO, align 4
  %221 = add nsw i32 %219, %220
  %222 = load i32, i32* %19, align 4
  %223 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %218, i32 %221, i32 %222)
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %16, align 4
  %226 = mul nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = ashr i32 %229, 32
  store i32 %230, i32* %19, align 4
  %231 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %232 = load i32, i32* %21, align 4
  %233 = load i32, i32* @MIU_TEST_AGT_WRDATA_HI, align 4
  %234 = add nsw i32 %232, %233
  %235 = load i32, i32* %19, align 4
  %236 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %231, i32 %234, i32 %235)
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %16, align 4
  %239 = mul nsw i32 %237, %238
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %19, align 4
  %244 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %245 = load i32, i32* %21, align 4
  %246 = load i32, i32* @MIU_TEST_AGT_WRDATA_UPPER_LO, align 4
  %247 = add nsw i32 %245, %246
  %248 = load i32, i32* %19, align 4
  %249 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %244, i32 %247, i32 %248)
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* %16, align 4
  %252 = mul nsw i32 %250, %251
  %253 = add nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = ashr i32 %256, 32
  store i32 %257, i32* %19, align 4
  %258 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %259 = load i32, i32* %21, align 4
  %260 = load i32, i32* @MIU_TEST_AGT_WRDATA_UPPER_HI, align 4
  %261 = add nsw i32 %259, %260
  %262 = load i32, i32* %19, align 4
  %263 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %258, i32 %261, i32 %262)
  %264 = load i32, i32* @MIU_TA_CTL_ENABLE, align 4
  %265 = load i32, i32* @MIU_TA_CTL_WRITE, align 4
  %266 = or i32 %264, %265
  store i32 %266, i32* %19, align 4
  %267 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %268 = load i32, i32* %21, align 4
  %269 = load i32, i32* @MIU_TEST_AGT_CTRL, align 4
  %270 = add nsw i32 %268, %269
  %271 = load i32, i32* %19, align 4
  %272 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %267, i32 %270, i32 %271)
  %273 = load i32, i32* @MIU_TA_CTL_START, align 4
  %274 = load i32, i32* @MIU_TA_CTL_ENABLE, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* @MIU_TA_CTL_WRITE, align 4
  %277 = or i32 %275, %276
  store i32 %277, i32* %19, align 4
  %278 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %279 = load i32, i32* %21, align 4
  %280 = load i32, i32* @MIU_TEST_AGT_CTRL, align 4
  %281 = add nsw i32 %279, %280
  %282 = load i32, i32* %19, align 4
  %283 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %278, i32 %281, i32 %282)
  store i32 0, i32* %11, align 4
  br label %284

284:                                              ; preds = %300, %194
  %285 = load i32, i32* %11, align 4
  %286 = load i32, i32* @MAX_CTL_CHECK, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %303

288:                                              ; preds = %284
  %289 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %290 = load i32, i32* %21, align 4
  %291 = load i32, i32* @MIU_TEST_AGT_CTRL, align 4
  %292 = add nsw i32 %290, %291
  %293 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %289, i32 %292)
  store i32 %293, i32* %19, align 4
  %294 = load i32, i32* %19, align 4
  %295 = load i32, i32* @MIU_TA_CTL_BUSY, align 4
  %296 = and i32 %294, %295
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %288
  br label %303

299:                                              ; preds = %288
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %11, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %11, align 4
  br label %284

303:                                              ; preds = %298, %284
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* @MAX_CTL_CHECK, align 4
  %306 = icmp sge i32 %304, %305
  br i1 %306, label %307, label %317

307:                                              ; preds = %303
  %308 = call i64 (...) @printk_ratelimit()
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %307
  %311 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %312 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %311, i32 0, i32 0
  %313 = load %struct.TYPE_2__*, %struct.TYPE_2__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 0
  %315 = call i32 @dev_err(i32* %314, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %316

316:                                              ; preds = %310, %307
  store i32 -1, i32* %12, align 4
  br label %321

317:                                              ; preds = %303
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %10, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %10, align 4
  br label %190

321:                                              ; preds = %316, %190
  %322 = load i32, i32* %12, align 4
  store i32 %322, i32* %5, align 4
  br label %323

323:                                              ; preds = %321, %98, %41
  %324 = load i32, i32* %5, align 4
  ret i32 %324
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @qla82xx_pci_mem_bound_check(%struct.qla_hw_data*, i32, i32) #2

declare dso_local i32 @qla82xx_pci_mem_write_direct(%struct.qla_hw_data*, i32, i8*, i32) #2

declare dso_local i64 @qla82xx_pci_mem_read_2M(%struct.qla_hw_data*, i32, i32*, i32) #2

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #2

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #2

declare dso_local i64 @printk_ratelimit(...) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
