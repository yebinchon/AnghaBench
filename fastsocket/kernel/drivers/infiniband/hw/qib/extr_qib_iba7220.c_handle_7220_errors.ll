; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_handle_7220_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_handle_7220_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.qib_devdata = type { %struct.qib_pportdata*, i32*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.qib_pportdata = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8* }

@HardwareErr = common dso_local global i32 0, align 4
@QIB_EEP_LOG_CNT = common dso_local global i32 0, align 4
@QLOGIC_IB_E_SDMAERRS = common dso_local global i32 0, align 4
@IB_E_BITSEXTANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"error interrupt with unknown errors %llx set\0A\00", align 1
@E_SUM_ERRS = common dso_local global i32 0, align 4
@E_SUM_LINK_PKTERRS = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@kr_errclear = common dso_local global i32 0, align 4
@IBStatusChanged = common dso_local global i32 0, align 4
@RcvEgrFullErr = common dso_local global i32 0, align 4
@RcvHdrFullErr = common dso_local global i32 0, align 4
@SDmaDisabledErr = common dso_local global i32 0, align 4
@E_SUM_PKTERRS = common dso_local global i32 0, align 4
@qib_stats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@QLOGIC_IB_E_PKTERRS = common dso_local global i32 0, align 4
@kr_ibcstatus = common dso_local global i32 0, align 4
@QIBL_IB_AUTONEG_INPROG = common dso_local global i32 0, align 4
@IBA7220_LINKWIDTH_SHIFT = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@IB_WIDTH_1X = common dso_local global i32 0, align 4
@IBA7220_LINKSPEED_SHIFT = common dso_local global i32 0, align 4
@QIB_IB_DDR = common dso_local global i32 0, align 4
@QIB_IB_SDR = common dso_local global i32 0, align 4
@IB_PHYSPORTSTATE_LINK_ERR_RECOVER = common dso_local global i64 0, align 8
@ResetNegated = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Got reset, requires re-init (unload and reload driver)\0A\00", align 1
@QIB_INITTED = common dso_local global i32 0, align 4
@QIB_STATUS_HWERROR = common dso_local global i32 0, align 4
@QIB_STATUS_IB_CONF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*, i32)* @handle_7220_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_7220_errors(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 0
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %13, align 8
  store %struct.qib_pportdata* %14, %struct.qib_pportdata** %9, align 8
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @HardwareErr, align 4
  %29 = call i32 @ERR_MASK(i32 %28)
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @qib_7220_handle_hwerrors(%struct.qib_devdata* %33, i8* %34, i32 8)
  br label %62

36:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @QIB_EEP_LOG_CNT, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %42, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @qib_inc_eeprom_err(%struct.qib_devdata* %54, i32 %55, i32 1)
  br label %57

57:                                               ; preds = %53, %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %37

61:                                               ; preds = %37
  br label %62

62:                                               ; preds = %61, %32
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @QLOGIC_IB_E_SDMAERRS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @sdma_7220_errors(%struct.qib_pportdata* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @IB_E_BITSEXTANT, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @IB_E_BITSEXTANT, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %83)
  br label %85

85:                                               ; preds = %77, %71
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @E_SUM_ERRS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %85
  %91 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %92 = call i32 @qib_disarm_7220_senderrbufs(%struct.qib_pportdata* %91)
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @E_SUM_LINK_PKTERRS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %99 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @E_SUM_LINK_PKTERRS, align 4
  %107 = and i32 %105, %106
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %104, %97, %90
  br label %126

109:                                              ; preds = %85
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @E_SUM_LINK_PKTERRS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %116 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @E_SUM_LINK_PKTERRS, align 4
  %124 = and i32 %122, %123
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %114, %109
  br label %126

126:                                              ; preds = %125, %108
  %127 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %128 = load i32, i32* @kr_errclear, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @qib_write_kreg(%struct.qib_devdata* %127, i32 %128, i32 %129)
  %131 = load i32, i32* %6, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %4, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %126
  br label %323

138:                                              ; preds = %126
  %139 = load i32, i32* @IBStatusChanged, align 4
  %140 = call i32 @ERR_MASK(i32 %139)
  %141 = load i32, i32* @RcvEgrFullErr, align 4
  %142 = call i32 @ERR_MASK(i32 %141)
  %143 = or i32 %140, %142
  %144 = load i32, i32* @RcvHdrFullErr, align 4
  %145 = call i32 @ERR_MASK(i32 %144)
  %146 = or i32 %143, %145
  %147 = load i32, i32* @HardwareErr, align 4
  %148 = call i32 @ERR_MASK(i32 %147)
  %149 = or i32 %146, %148
  %150 = load i32, i32* @SDmaDisabledErr, align 4
  %151 = call i32 @ERR_MASK(i32 %150)
  %152 = or i32 %149, %151
  store i32 %152, i32* %10, align 4
  %153 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* %10, align 4
  %157 = xor i32 %156, -1
  %158 = and i32 %155, %157
  %159 = call i32 @qib_decode_7220_err(%struct.qib_devdata* %153, i8* %154, i32 8, i32 %158)
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @E_SUM_PKTERRS, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %138
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 3), align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 3), align 4
  br label %167

167:                                              ; preds = %164, %138
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @E_SUM_ERRS, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 2), align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 2), align 4
  br label %175

175:                                              ; preds = %172, %167
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @E_SUM_PKTERRS, align 4
  %178 = load i32, i32* @QLOGIC_IB_E_PKTERRS, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @SDmaDisabledErr, align 4
  %181 = call i32 @ERR_MASK(i32 %180)
  %182 = or i32 %179, %181
  %183 = xor i32 %182, -1
  %184 = and i32 %176, %183
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @IBStatusChanged, align 4
  %187 = call i32 @ERR_MASK(i32 %186)
  %188 = and i32 %185, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %240

190:                                              ; preds = %175
  %191 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %192 = load i32, i32* @kr_ibcstatus, align 4
  %193 = call i32 @qib_read_kreg64(%struct.qib_devdata* %191, i32 %192)
  store i32 %193, i32* %11, align 4
  %194 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %195 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @QIBL_IB_AUTONEG_INPROG, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %190
  %201 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @handle_7220_chase(%struct.qib_pportdata* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %190
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @IBA7220_LINKWIDTH_SHIFT, align 4
  %207 = ashr i32 %205, %206
  %208 = and i32 %207, 1
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %204
  %211 = load i32, i32* @IB_WIDTH_4X, align 4
  br label %214

212:                                              ; preds = %204
  %213 = load i32, i32* @IB_WIDTH_1X, align 4
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i32 [ %211, %210 ], [ %213, %212 ]
  %216 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %217 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %216, i32 0, i32 6
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* @IBA7220_LINKSPEED_SHIFT, align 4
  %220 = ashr i32 %218, %219
  %221 = and i32 %220, 1
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %214
  %224 = load i32, i32* @QIB_IB_DDR, align 4
  br label %227

225:                                              ; preds = %214
  %226 = load i32, i32* @QIB_IB_SDR, align 4
  br label %227

227:                                              ; preds = %225, %223
  %228 = phi i32 [ %224, %223 ], [ %226, %225 ]
  %229 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %230 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %229, i32 0, i32 5
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* %11, align 4
  %232 = call i64 @qib_7220_phys_portstate(i32 %231)
  %233 = load i64, i64* @IB_PHYSPORTSTATE_LINK_ERR_RECOVER, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %227
  %236 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %237 = load i32, i32* %11, align 4
  %238 = call i32 @qib_handle_e_ibstatuschanged(%struct.qib_pportdata* %236, i32 %237)
  br label %239

239:                                              ; preds = %235, %227
  br label %240

240:                                              ; preds = %239, %175
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* @ResetNegated, align 4
  %243 = call i32 @ERR_MASK(i32 %242)
  %244 = and i32 %241, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %270

246:                                              ; preds = %240
  %247 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %248 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %247, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %249 = load i32, i32* @QIB_INITTED, align 4
  %250 = xor i32 %249, -1
  %251 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %252 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = and i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load i32, i32* @QIB_STATUS_HWERROR, align 4
  %256 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %257 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %255
  store i32 %260, i32* %258, align 4
  %261 = load i32, i32* @QIB_STATUS_IB_CONF, align 4
  %262 = xor i32 %261, -1
  %263 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %264 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %263, i32 0, i32 0
  %265 = load %struct.qib_pportdata*, %struct.qib_pportdata** %264, align 8
  %266 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %265, i32 0, i32 4
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, %262
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %246, %240
  %271 = load i8*, i8** %5, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %285

275:                                              ; preds = %270
  %276 = load i32, i32* %7, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %275
  %279 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %280 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %281 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load i8*, i8** %5, align 8
  %284 = call i32 @qib_dev_porterr(%struct.qib_devdata* %279, i32 %282, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %283)
  br label %285

285:                                              ; preds = %278, %275, %270
  %286 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %287 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %290 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = and i32 %288, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %285
  %295 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %296 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %295, i32 0, i32 2
  %297 = call i32 @wake_up_interruptible(i32* %296)
  br label %298

298:                                              ; preds = %294, %285
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* @RcvEgrFullErr, align 4
  %301 = call i32 @ERR_MASK(i32 %300)
  %302 = load i32, i32* @RcvHdrFullErr, align 4
  %303 = call i32 @ERR_MASK(i32 %302)
  %304 = or i32 %301, %303
  %305 = and i32 %299, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %322

307:                                              ; preds = %298
  %308 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %309 = call i32 @qib_handle_urcv(%struct.qib_devdata* %308, i32 -1)
  %310 = load i32, i32* %4, align 4
  %311 = load i32, i32* @RcvEgrFullErr, align 4
  %312 = call i32 @ERR_MASK(i32 %311)
  %313 = and i32 %310, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %307
  %316 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 1), align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 1), align 4
  br label %321

318:                                              ; preds = %307
  %319 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 0), align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 0), align 4
  br label %321

321:                                              ; preds = %318, %315
  br label %322

322:                                              ; preds = %321, %298
  br label %323

323:                                              ; preds = %322, %137
  ret void
}

declare dso_local i32 @ERR_MASK(i32) #1

declare dso_local i32 @qib_7220_handle_hwerrors(%struct.qib_devdata*, i8*, i32) #1

declare dso_local i32 @qib_inc_eeprom_err(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @sdma_7220_errors(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @qib_disarm_7220_senderrbufs(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_decode_7220_err(%struct.qib_devdata*, i8*, i32, i32) #1

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @handle_7220_chase(%struct.qib_pportdata*, i32) #1

declare dso_local i64 @qib_7220_phys_portstate(i32) #1

declare dso_local i32 @qib_handle_e_ibstatuschanged(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_dev_porterr(%struct.qib_devdata*, i32, i8*, i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @qib_handle_urcv(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
