; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_reg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32, %struct.nes_adapter* }
%struct.nes_adapter = type { i32, i32, i32, i32 }
%struct.nes_pd = type { i32 }
%struct.nes_root_vpbl = type { i64, i32, i32*, i32*, i32 }
%struct.nes_hw_cqp_wqe = type { i32* }
%struct.nes_cqp_request = type { i32, i64, i32, i32, i32, i32, %struct.nes_hw_cqp_wqe }

@NES_DBG_MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get a cqp_request.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Out of Pbls\0A\00", align 1
@NES_CQP_REGISTER_STAG = common dso_local global i32 0, align 4
@NES_CQP_STAG_RIGHTS_LOCAL_READ = common dso_local global i32 0, align 4
@NES_CQP_STAG_VA_TO = common dso_local global i32 0, align 4
@NES_CQP_STAG_MR = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@NES_CQP_STAG_RIGHTS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@NES_CQP_STAG_RIGHTS_REMOTE_WRITE = common dso_local global i32 0, align 4
@NES_CQP_STAG_REM_ACC_EN = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@NES_CQP_STAG_RIGHTS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_MW_BIND = common dso_local global i32 0, align 4
@NES_CQP_STAG_RIGHTS_WINDOW_BIND = common dso_local global i32 0, align 4
@NES_CQP_WQE_OPCODE_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_VA_LOW_IDX = common dso_local global i32 0, align 4
@NES_CQP_STAG_WQE_LEN_LOW_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_STAG_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_PA_LOW_IDX = common dso_local global i32 0, align 4
@NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_WQE_PBL_LEN_IDX = common dso_local global i64 0, align 8
@NES_CQP_STAG_PBL_BLK_SIZE = common dso_local global i32 0, align 4
@NES_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [101 x i8] c"Register STag 0x%08X completed, wait_event_timeout ret = %u, CQP Major:Minor codes = 0x%04X:0x%04X.\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_device*, %struct.nes_pd*, i32, i32, %struct.nes_root_vpbl*, i32, i32, i32, i32, i32*, i32*, i32*)* @nes_reg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_reg_mr(%struct.nes_device* %0, %struct.nes_pd* %1, i32 %2, i32 %3, %struct.nes_root_vpbl* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.nes_device*, align 8
  %15 = alloca %struct.nes_pd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nes_root_vpbl*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.nes_hw_cqp_wqe*, align 8
  %27 = alloca %struct.nes_cqp_request*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.nes_adapter*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.nes_root_vpbl, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %14, align 8
  store %struct.nes_pd* %1, %struct.nes_pd** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store %struct.nes_root_vpbl* %4, %struct.nes_root_vpbl** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %40 = load %struct.nes_device*, %struct.nes_device** %14, align 8
  %41 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %40, i32 0, i32 1
  %42 = load %struct.nes_adapter*, %struct.nes_adapter** %41, align 8
  store %struct.nes_adapter* %42, %struct.nes_adapter** %30, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %43 = load i32, i32* %20, align 4
  %44 = icmp sgt i32 %43, 1
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %36, align 4
  %47 = bitcast %struct.nes_root_vpbl* %37 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %47, i8 0, i64 40, i1 false)
  store i32 0, i32* %38, align 4
  %48 = load %struct.nes_device*, %struct.nes_device** %14, align 8
  %49 = call %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device* %48)
  store %struct.nes_cqp_request* %49, %struct.nes_cqp_request** %27, align 8
  %50 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %27, align 8
  %51 = icmp eq %struct.nes_cqp_request* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %12
  %53 = load i32, i32* @NES_DBG_MR, align 4
  %54 = call i32 (i32, i8*, ...) @nes_debug(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %13, align 4
  br label %502

57:                                               ; preds = %12
  %58 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %27, align 8
  %59 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %27, align 8
  %61 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %60, i32 0, i32 6
  store %struct.nes_hw_cqp_wqe* %61, %struct.nes_hw_cqp_wqe** %26, align 8
  %62 = load i32, i32* %20, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %188

64:                                               ; preds = %57
  %65 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %66 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %65, i32 0, i32 3
  %67 = load i64, i64* %28, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load i32, i32* %20, align 4
  %70 = sub nsw i32 %69, 1
  %71 = mul nsw i32 %70, 512
  %72 = load i32, i32* %21, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %31, align 4
  %74 = load i32, i32* %31, align 4
  %75 = add nsw i32 %74, 31
  %76 = sdiv i32 %75, 32
  store i32 %76, i32* %32, align 4
  %77 = load i32, i32* %31, align 4
  %78 = icmp sle i32 %77, 32
  br i1 %78, label %79, label %95

79:                                               ; preds = %64
  %80 = load i32, i32* %32, align 4
  %81 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %82 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1, i32* %34, align 4
  br label %94

86:                                               ; preds = %79
  %87 = load i32, i32* %20, align 4
  %88 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %89 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sle i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 1, i32* %35, align 4
  br label %93

93:                                               ; preds = %92, %86
  br label %94

94:                                               ; preds = %93, %85
  br label %146

95:                                               ; preds = %64
  %96 = load i32, i32* %31, align 4
  %97 = icmp sle i32 %96, 2048
  br i1 %97, label %98, label %136

98:                                               ; preds = %95
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %36, align 4
  %101 = add nsw i32 %99, %100
  %102 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %103 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp sle i32 %101, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %98
  %107 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %108 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %111 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 1
  %114 = icmp sgt i32 %109, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  store i32 1, i32* %35, align 4
  br label %135

116:                                              ; preds = %106, %98
  %117 = load i32, i32* %32, align 4
  %118 = add nsw i32 %117, 1
  %119 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %120 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp sle i32 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  store i32 1, i32* %34, align 4
  store i32 1, i32* %36, align 4
  br label %134

124:                                              ; preds = %116
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %36, align 4
  %127 = add nsw i32 %125, %126
  %128 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %129 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp sle i32 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  store i32 1, i32* %35, align 4
  br label %133

133:                                              ; preds = %132, %124
  br label %134

134:                                              ; preds = %133, %123
  br label %135

135:                                              ; preds = %134, %115
  br label %145

136:                                              ; preds = %95
  %137 = load i32, i32* %20, align 4
  %138 = add nsw i32 %137, 1
  %139 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %140 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp sle i32 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 1, i32* %35, align 4
  br label %144

144:                                              ; preds = %143, %136
  br label %145

145:                                              ; preds = %144, %135
  br label %146

146:                                              ; preds = %145, %94
  %147 = load i32, i32* %34, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i32, i32* %32, align 4
  store i32 %150, i32* %33, align 4
  %151 = load i32, i32* %33, align 4
  %152 = load i32, i32* %36, align 4
  %153 = add nsw i32 %151, %152
  %154 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %155 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %183

158:                                              ; preds = %146
  %159 = load i32, i32* %35, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load i32, i32* %20, align 4
  store i32 %162, i32* %33, align 4
  %163 = load i32, i32* %33, align 4
  %164 = load i32, i32* %36, align 4
  %165 = add nsw i32 %163, %164
  %166 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %167 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %182

170:                                              ; preds = %158
  %171 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %172 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %171, i32 0, i32 3
  %173 = load i64, i64* %28, align 8
  %174 = call i32 @spin_unlock_irqrestore(i32* %172, i64 %173)
  %175 = load i32, i32* @NES_DBG_MR, align 4
  %176 = call i32 (i32, i8*, ...) @nes_debug(i32 %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %177 = load %struct.nes_device*, %struct.nes_device** %14, align 8
  %178 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %27, align 8
  %179 = call i32 @nes_free_cqp_request(%struct.nes_device* %177, %struct.nes_cqp_request* %178)
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %13, align 4
  br label %502

182:                                              ; preds = %161
  br label %183

183:                                              ; preds = %182, %149
  %184 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %185 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %184, i32 0, i32 3
  %186 = load i64, i64* %28, align 8
  %187 = call i32 @spin_unlock_irqrestore(i32* %185, i64 %186)
  br label %188

188:                                              ; preds = %183, %57
  %189 = load i32, i32* %34, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %250

191:                                              ; preds = %188
  %192 = load i32, i32* %36, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %250

194:                                              ; preds = %191
  %195 = load %struct.nes_device*, %struct.nes_device** %14, align 8
  %196 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %18, align 8
  %197 = load i32, i32* %20, align 4
  %198 = call i32 @root_256(%struct.nes_device* %195, %struct.nes_root_vpbl* %196, %struct.nes_root_vpbl* %37, i32 %197)
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %206

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %37, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  store %struct.nes_root_vpbl* %37, %struct.nes_root_vpbl** %18, align 8
  br label %205

205:                                              ; preds = %204, %200
  br label %249

206:                                              ; preds = %194
  %207 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %208 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %207, i32 0, i32 3
  %209 = load i64, i64* %28, align 8
  %210 = call i32 @spin_lock_irqsave(i32* %208, i64 %209)
  %211 = load i32, i32* %32, align 4
  %212 = load i32, i32* %36, align 4
  %213 = add nsw i32 %211, %212
  %214 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %215 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, %213
  store i32 %217, i32* %215, align 4
  store i32 0, i32* %34, align 4
  %218 = load i32, i32* %20, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %206
  store i32 0, i32* %36, align 4
  br label %221

221:                                              ; preds = %220, %206
  %222 = load i32, i32* %20, align 4
  store i32 %222, i32* %33, align 4
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* %36, align 4
  %225 = add nsw i32 %223, %224
  %226 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %227 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp sle i32 %225, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %221
  %231 = load i32, i32* %33, align 4
  %232 = load i32, i32* %36, align 4
  %233 = add nsw i32 %231, %232
  %234 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %235 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %236, %233
  store i32 %237, i32* %235, align 4
  store i32 1, i32* %35, align 4
  br label %238

238:                                              ; preds = %230, %221
  %239 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %240 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %239, i32 0, i32 3
  %241 = load i64, i64* %28, align 8
  %242 = call i32 @spin_unlock_irqrestore(i32* %240, i64 %241)
  %243 = load i32, i32* %35, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load i32, i32* @ENOMEM, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %13, align 4
  br label %502

248:                                              ; preds = %238
  br label %249

249:                                              ; preds = %248, %205
  br label %250

250:                                              ; preds = %249, %191, %188
  %251 = load i32, i32* @NES_CQP_REGISTER_STAG, align 4
  %252 = load i32, i32* @NES_CQP_STAG_RIGHTS_LOCAL_READ, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @NES_CQP_STAG_VA_TO, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @NES_CQP_STAG_MR, align 4
  %257 = or i32 %255, %256
  store i32 %257, i32* %38, align 4
  %258 = load i32, i32* %22, align 4
  %259 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %250
  %263 = load i32, i32* @NES_CQP_STAG_RIGHTS_LOCAL_WRITE, align 4
  %264 = load i32, i32* %38, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %38, align 4
  br label %266

266:                                              ; preds = %262, %250
  %267 = load i32, i32* %22, align 4
  %268 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %266
  %272 = load i32, i32* @NES_CQP_STAG_RIGHTS_REMOTE_WRITE, align 4
  %273 = load i32, i32* @NES_CQP_STAG_REM_ACC_EN, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* %38, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %38, align 4
  br label %277

277:                                              ; preds = %271, %266
  %278 = load i32, i32* %22, align 4
  %279 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = load i32, i32* @NES_CQP_STAG_RIGHTS_REMOTE_READ, align 4
  %284 = load i32, i32* @NES_CQP_STAG_REM_ACC_EN, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* %38, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %38, align 4
  br label %288

288:                                              ; preds = %282, %277
  %289 = load i32, i32* %22, align 4
  %290 = load i32, i32* @IB_ACCESS_MW_BIND, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %288
  %294 = load i32, i32* @NES_CQP_STAG_RIGHTS_WINDOW_BIND, align 4
  %295 = load i32, i32* @NES_CQP_STAG_REM_ACC_EN, align 4
  %296 = or i32 %294, %295
  %297 = load i32, i32* %38, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %38, align 4
  br label %299

299:                                              ; preds = %293, %288
  %300 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %26, align 8
  %301 = load %struct.nes_device*, %struct.nes_device** %14, align 8
  %302 = call i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe* %300, %struct.nes_device* %301)
  %303 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %26, align 8
  %304 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = load i64, i64* @NES_CQP_WQE_OPCODE_IDX, align 8
  %307 = load i32, i32* %38, align 4
  %308 = call i32 @set_wqe_32bit_value(i32* %305, i64 %306, i32 %307)
  %309 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %26, align 8
  %310 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* @NES_CQP_STAG_WQE_VA_LOW_IDX, align 4
  %313 = load i32*, i32** %23, align 8
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @set_wqe_64bit_value(i32* %311, i32 %312, i32 %314)
  %316 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %26, align 8
  %317 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i64, i64* @NES_CQP_STAG_WQE_LEN_LOW_IDX, align 8
  %320 = load i32, i32* %17, align 4
  %321 = call i32 @set_wqe_32bit_value(i32* %318, i64 %319, i32 %320)
  %322 = load i32, i32* %17, align 4
  %323 = ashr i32 %322, 8
  %324 = and i32 %323, -16777216
  %325 = call i32 @cpu_to_le32(i32 %324)
  %326 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %26, align 8
  %327 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = load i64, i64* @NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  store i32 %325, i32* %330, align 4
  %331 = load %struct.nes_pd*, %struct.nes_pd** %15, align 8
  %332 = getelementptr inbounds %struct.nes_pd, %struct.nes_pd* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = and i32 %333, 32767
  %335 = call i32 @cpu_to_le32(i32 %334)
  %336 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %26, align 8
  %337 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = load i64, i64* @NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX, align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = or i32 %341, %335
  store i32 %342, i32* %340, align 4
  %343 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %26, align 8
  %344 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = load i64, i64* @NES_CQP_STAG_WQE_STAG_IDX, align 8
  %347 = load i32, i32* %16, align 4
  %348 = call i32 @set_wqe_32bit_value(i32* %345, i64 %346, i32 %347)
  %349 = load i32, i32* %33, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %299
  %352 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %26, align 8
  %353 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %352, i32 0, i32 0
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* @NES_CQP_STAG_WQE_PA_LOW_IDX, align 4
  %356 = load i32, i32* %19, align 4
  %357 = call i32 @set_wqe_64bit_value(i32* %354, i32 %355, i32 %356)
  br label %394

358:                                              ; preds = %299
  %359 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %26, align 8
  %360 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* @NES_CQP_STAG_WQE_PA_LOW_IDX, align 4
  %363 = load %struct.nes_root_vpbl*, %struct.nes_root_vpbl** %18, align 8
  %364 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = trunc i64 %365 to i32
  %367 = call i32 @set_wqe_64bit_value(i32* %361, i32 %362, i32 %366)
  %368 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %26, align 8
  %369 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %368, i32 0, i32 0
  %370 = load i32*, i32** %369, align 8
  %371 = load i64, i64* @NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX, align 8
  %372 = load i32, i32* %33, align 4
  %373 = call i32 @set_wqe_32bit_value(i32* %370, i64 %371, i32 %372)
  %374 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %26, align 8
  %375 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = load i64, i64* @NES_CQP_STAG_WQE_PBL_LEN_IDX, align 8
  %378 = load i32, i32* %31, align 4
  %379 = mul nsw i32 %378, 8
  %380 = call i32 @set_wqe_32bit_value(i32* %376, i64 %377, i32 %379)
  %381 = load i32, i32* %35, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %393

383:                                              ; preds = %358
  %384 = load i32, i32* @NES_CQP_STAG_PBL_BLK_SIZE, align 4
  %385 = call i32 @cpu_to_le32(i32 %384)
  %386 = load %struct.nes_hw_cqp_wqe*, %struct.nes_hw_cqp_wqe** %26, align 8
  %387 = getelementptr inbounds %struct.nes_hw_cqp_wqe, %struct.nes_hw_cqp_wqe* %386, i32 0, i32 0
  %388 = load i32*, i32** %387, align 8
  %389 = load i64, i64* @NES_CQP_WQE_OPCODE_IDX, align 8
  %390 = getelementptr inbounds i32, i32* %388, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = or i32 %391, %385
  store i32 %392, i32* %390, align 4
  br label %393

393:                                              ; preds = %383, %358
  br label %394

394:                                              ; preds = %393, %351
  %395 = call i32 (...) @barrier()
  %396 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %27, align 8
  %397 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %396, i32 0, i32 5
  %398 = call i32 @atomic_set(i32* %397, i32 2)
  %399 = load %struct.nes_device*, %struct.nes_device** %14, align 8
  %400 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %27, align 8
  %401 = call i32 @nes_post_cqp_request(%struct.nes_device* %399, %struct.nes_cqp_request* %400)
  %402 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %27, align 8
  %403 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %402, i32 0, i32 4
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %27, align 8
  %406 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 0, %407
  %409 = zext i1 %408 to i32
  %410 = load i32, i32* @NES_EVENT_TIMEOUT, align 4
  %411 = call i32 @wait_event_timeout(i32 %404, i32 %409, i32 %410)
  store i32 %411, i32* %29, align 4
  %412 = load i32, i32* @NES_DBG_MR, align 4
  %413 = load i32, i32* %16, align 4
  %414 = load i32, i32* %29, align 4
  %415 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %27, align 8
  %416 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %27, align 8
  %419 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 4
  %421 = call i32 (i32, i8*, ...) @nes_debug(i32 %412, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 %413, i32 %414, i32 %417, i32 %420)
  %422 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %27, align 8
  %423 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  store i32 %424, i32* %39, align 4
  %425 = load %struct.nes_device*, %struct.nes_device** %14, align 8
  %426 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %27, align 8
  %427 = call i32 @nes_put_cqp_request(%struct.nes_device* %425, %struct.nes_cqp_request* %426)
  %428 = load i32, i32* %29, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %394
  %431 = load i32, i32* %39, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %468

433:                                              ; preds = %430, %394
  %434 = load i32, i32* %33, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %468

436:                                              ; preds = %433
  %437 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %438 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %437, i32 0, i32 3
  %439 = load i64, i64* %28, align 8
  %440 = call i32 @spin_lock_irqsave(i32* %438, i64 %439)
  %441 = load i32, i32* %34, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %451

443:                                              ; preds = %436
  %444 = load i32, i32* %33, align 4
  %445 = load i32, i32* %36, align 4
  %446 = add nsw i32 %444, %445
  %447 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %448 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = add nsw i32 %449, %446
  store i32 %450, i32* %448, align 4
  br label %463

451:                                              ; preds = %436
  %452 = load i32, i32* %35, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %462

454:                                              ; preds = %451
  %455 = load i32, i32* %33, align 4
  %456 = load i32, i32* %36, align 4
  %457 = add nsw i32 %455, %456
  %458 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %459 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 %460, %457
  store i32 %461, i32* %459, align 4
  br label %462

462:                                              ; preds = %454, %451
  br label %463

463:                                              ; preds = %462, %443
  %464 = load %struct.nes_adapter*, %struct.nes_adapter** %30, align 8
  %465 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %464, i32 0, i32 3
  %466 = load i64, i64* %28, align 8
  %467 = call i32 @spin_unlock_irqrestore(i32* %465, i64 %466)
  br label %468

468:                                              ; preds = %463, %433, %430
  %469 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %37, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %482

472:                                              ; preds = %468
  %473 = load %struct.nes_device*, %struct.nes_device** %14, align 8
  %474 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %37, i32 0, i32 1
  %477 = load i32, i32* %476, align 8
  %478 = getelementptr inbounds %struct.nes_root_vpbl, %struct.nes_root_vpbl* %37, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = trunc i64 %479 to i32
  %481 = call i32 @pci_free_consistent(i32 %475, i32 512, i32 %477, i32 %480)
  br label %482

482:                                              ; preds = %472, %468
  %483 = load i32, i32* %29, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %488, label %485

485:                                              ; preds = %482
  %486 = load i32, i32* @ETIME, align 4
  %487 = sub nsw i32 0, %486
  store i32 %487, i32* %13, align 4
  br label %502

488:                                              ; preds = %482
  %489 = load i32, i32* %39, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %488
  %492 = load i32, i32* @EIO, align 4
  %493 = sub nsw i32 0, %492
  store i32 %493, i32* %13, align 4
  br label %502

494:                                              ; preds = %488
  br label %495

495:                                              ; preds = %494
  %496 = load i32, i32* %33, align 4
  %497 = load i32, i32* %36, align 4
  %498 = add nsw i32 %496, %497
  %499 = load i32*, i32** %24, align 8
  store i32 %498, i32* %499, align 4
  %500 = load i32, i32* %35, align 4
  %501 = load i32*, i32** %25, align 8
  store i32 %500, i32* %501, align 4
  store i32 0, i32* %13, align 4
  br label %502

502:                                              ; preds = %495, %491, %485, %245, %170, %52
  %503 = load i32, i32* %13, align 4
  ret i32 %503
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nes_cqp_request* @nes_get_cqp_request(%struct.nes_device*) #2

declare dso_local i32 @nes_debug(i32, i8*, ...) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @nes_free_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #2

declare dso_local i32 @root_256(%struct.nes_device*, %struct.nes_root_vpbl*, %struct.nes_root_vpbl*, i32) #2

declare dso_local i32 @nes_fill_init_cqp_wqe(%struct.nes_hw_cqp_wqe*, %struct.nes_device*) #2

declare dso_local i32 @set_wqe_32bit_value(i32*, i64, i32) #2

declare dso_local i32 @set_wqe_64bit_value(i32*, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @barrier(...) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @nes_post_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #2

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #2

declare dso_local i32 @nes_put_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #2

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
