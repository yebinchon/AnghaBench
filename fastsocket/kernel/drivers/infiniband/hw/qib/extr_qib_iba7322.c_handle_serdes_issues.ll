; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_handle_serdes_issues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_handle_serdes_issues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }

@IBCStatusA_0 = common dso_local global i32 0, align 4
@LinkTrainingState = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@QIB_CHASE_TIME = common dso_local global i32 0, align 4
@IB_7322_LT_STATE_CFGTEST = common dso_local global i32 0, align 4
@IB_7322_LT_STATE_CFGWAITENH = common dso_local global i32 0, align 4
@IB_7322_LT_STATE_LINKUP = common dso_local global i32 0, align 4
@LinkSpeedQDR = common dso_local global i32 0, align 4
@IB_7322_LT_STATE_CFGIDLE = common dso_local global i32 0, align 4
@QIB_IB_QDR = common dso_local global i64 0, align 8
@IB_7322_LT_STATE_POLLACTIVE = common dso_local global i32 0, align 4
@IB_7322_LT_STATE_SLEEPQUIET = common dso_local global i32 0, align 4
@IB_PHYSPORTSTATE_LINK_ERR_RECOVER = common dso_local global i32 0, align 4
@IB_PHYSPORTSTATE_RECOVERY_RETRAIN = common dso_local global i32 0, align 4
@IB_PHYSPORTSTATE_RECOVERY_WAITRMT = common dso_local global i32 0, align 4
@IB_PHYSPORTSTATE_RECOVERY_IDLE = common dso_local global i32 0, align 4
@QDR_STATIC_ADAPT_DOWN_R1 = common dso_local global i32 0, align 4
@QDR_STATIC_ADAPT_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"IB%u:%u re-enabled QDR adaptation ibclt %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32)* @handle_serdes_issues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_serdes_issues(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IBCStatusA_0, align 4
  %11 = load i32, i32* @LinkTrainingState, align 4
  %12 = call i64 @SYM_FIELD(i32 %9, i32 %10, i32 %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %56 [
    i32 130, label %15
    i32 129, label %15
    i32 128, label %15
    i32 131, label %15
  ]

15:                                               ; preds = %2, %2, %2, %2
  %16 = load i64, i64* @jiffies, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %18 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %17, i32 0, i32 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %26 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %25, i32 0, i32 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @time_after(i64 %24, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @disable_chase(%struct.qib_pportdata* %33, i64 %34, i32 %35)
  br label %55

37:                                               ; preds = %23, %15
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %37
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @QIB_CHASE_TIME, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = trunc i64 %48 to i32
  %50 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %51 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %50, i32 0, i32 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i32 %49, i32* %53, align 8
  br label %54

54:                                               ; preds = %44, %37
  br label %55

55:                                               ; preds = %54, %32
  br label %61

56:                                               ; preds = %2
  %57 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %58 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %57, i32 0, i32 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %56, %55
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @IB_7322_LT_STATE_CFGTEST, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @IB_7322_LT_STATE_CFGWAITENH, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @IB_7322_LT_STATE_LINKUP, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @IBCStatusA_0, align 4
  %76 = load i32, i32* @LinkSpeedQDR, align 4
  %77 = call i32 @SYM_MASK(i32 %75, i32 %76)
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %73
  %81 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %82 = call i32 @force_h1(%struct.qib_pportdata* %81)
  %83 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %84 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %83, i32 0, i32 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %88 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %80
  %96 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %97 = call i32 @serdes_7322_los_enable(%struct.qib_pportdata* %96, i32 0)
  br label %98

98:                                               ; preds = %95, %80
  br label %128

99:                                               ; preds = %73, %69
  %100 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %101 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %100, i32 0, i32 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %99
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @IBCStatusA_0, align 4
  %109 = load i32, i32* @LinkSpeedQDR, align 4
  %110 = call i32 @SYM_MASK(i32 %108, i32 %109)
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %106
  %114 = load i32, i32* %5, align 4
  %115 = icmp eq i32 %114, 131
  br i1 %115, label %124, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @IB_7322_LT_STATE_CFGIDLE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @IB_7322_LT_STATE_LINKUP, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120, %116, %113
  %125 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %126 = call i32 @force_h1(%struct.qib_pportdata* %125)
  br label %127

127:                                              ; preds = %124, %120, %106, %99
  br label %128

128:                                              ; preds = %127, %98
  %129 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %130 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %129, i32 0, i32 3
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = call i64 @IS_QMH(%struct.TYPE_7__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %136 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %135, i32 0, i32 3
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = call i64 @IS_QME(%struct.TYPE_7__* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %164

140:                                              ; preds = %134, %128
  %141 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %142 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @QIB_IB_QDR, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %140
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @IB_7322_LT_STATE_CFGTEST, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %161, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %5, align 4
  %152 = icmp eq i32 %151, 131
  br i1 %152, label %161, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @IB_7322_LT_STATE_POLLACTIVE, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @IB_7322_LT_STATE_SLEEPQUIET, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157, %150, %146
  %162 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %163 = call i32 @adj_tx_serdes(%struct.qib_pportdata* %162)
  br label %164

164:                                              ; preds = %161, %157, %153, %140, %134
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @IB_7322_LT_STATE_LINKUP, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %257

168:                                              ; preds = %164
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @qib_7322_phys_portstate(i32 %169)
  store i32 %170, i32* %7, align 4
  %171 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %172 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @IBCStatusA_0, align 4
  %175 = load i32, i32* @LinkTrainingState, align 4
  %176 = call i64 @SYM_FIELD(i32 %173, i32 %174, i32 %175)
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %8, align 4
  %178 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %179 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %178, i32 0, i32 3
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %209, label %186

186:                                              ; preds = %168
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @IB_7322_LT_STATE_LINKUP, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %209

190:                                              ; preds = %186
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @IB_PHYSPORTSTATE_LINK_ERR_RECOVER, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %209

194:                                              ; preds = %190
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* @IB_PHYSPORTSTATE_RECOVERY_RETRAIN, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %194
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @IB_PHYSPORTSTATE_RECOVERY_WAITRMT, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %198
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @IB_PHYSPORTSTATE_RECOVERY_IDLE, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %208 = call i32 @serdes_7322_los_enable(%struct.qib_pportdata* %207, i32 1)
  br label %209

209:                                              ; preds = %206, %202, %198, %194, %190, %186, %168
  %210 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %211 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %210, i32 0, i32 4
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %256, label %216

216:                                              ; preds = %209
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* @IB_7322_LT_STATE_SLEEPQUIET, align 4
  %219 = icmp sle i32 %217, %218
  br i1 %219, label %220, label %256

220:                                              ; preds = %216
  %221 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %222 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %221, i32 0, i32 4
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  store i32 1, i32* %224, align 4
  %225 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %226 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %225, i32 0, i32 4
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 2
  store i64 0, i64* %228, align 8
  %229 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %230 = call i32 @krp_static_adapt_dis(i32 2)
  %231 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %232 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %231, i32 0, i32 3
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %220
  %240 = load i32, i32* @QDR_STATIC_ADAPT_DOWN_R1, align 4
  br label %243

241:                                              ; preds = %220
  %242 = load i32, i32* @QDR_STATIC_ADAPT_DOWN, align 4
  br label %243

243:                                              ; preds = %241, %239
  %244 = phi i32 [ %240, %239 ], [ %242, %241 ]
  %245 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %229, i32 %230, i32 %244)
  %246 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %247 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %246, i32 0, i32 3
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %252 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %5, align 4
  %255 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %250, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %243, %216, %209
  br label %257

257:                                              ; preds = %256, %164
  ret void
}

declare dso_local i64 @SYM_FIELD(i32, i32, i32) #1

declare dso_local i32 @time_after(i64, i32) #1

declare dso_local i32 @disable_chase(%struct.qib_pportdata*, i64, i32) #1

declare dso_local i32 @SYM_MASK(i32, i32) #1

declare dso_local i32 @force_h1(%struct.qib_pportdata*) #1

declare dso_local i32 @serdes_7322_los_enable(%struct.qib_pportdata*, i32) #1

declare dso_local i64 @IS_QMH(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_QME(%struct.TYPE_7__*) #1

declare dso_local i32 @adj_tx_serdes(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_7322_phys_portstate(i32) #1

declare dso_local i32 @qib_write_kreg_port(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @krp_static_adapt_dis(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
