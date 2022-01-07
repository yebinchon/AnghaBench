; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_handle_6120_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_handle_6120_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.qib_devdata = type { %struct.qib_pportdata*, i32*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.qib_pportdata = type { i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i8*, i64 }
%struct.TYPE_4__ = type { i32 }

@HardwareErr = common dso_local global i32 0, align 4
@QIB_EEP_LOG_CNT = common dso_local global i32 0, align 4
@IB_E_BITSEXTANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"error interrupt with unknown errors %llx set\0A\00", align 1
@E_SUM_ERRS = common dso_local global i32 0, align 4
@E_SUM_LINK_PKTERRS = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@kr_errclear = common dso_local global i32 0, align 4
@IBStatusChanged = common dso_local global i32 0, align 4
@RcvEgrFullErr = common dso_local global i32 0, align 4
@RcvHdrFullErr = common dso_local global i32 0, align 4
@E_SUM_PKTERRS = common dso_local global i32 0, align 4
@qib_stats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@QLOGIC_IB_E_PKTERRS = common dso_local global i32 0, align 4
@kr_ibcstatus = common dso_local global i32 0, align 4
@IB_PORT_INIT = common dso_local global i64 0, align 8
@IB_PHYSPORTSTATE_LINK_ERR_RECOVER = common dso_local global i64 0, align 8
@ResetNegated = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Got reset, requires re-init (unload and reload driver)\0A\00", align 1
@QIB_INITTED = common dso_local global i32 0, align 4
@QIB_STATUS_HWERROR = common dso_local global i32 0, align 4
@QIB_STATUS_IB_CONF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*, i32)* @handle_6120_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_6120_errors(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load %struct.qib_pportdata*, %struct.qib_pportdata** %15, align 8
  store %struct.qib_pportdata* %16, %struct.qib_pportdata** %9, align 8
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %25 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @HardwareErr, align 4
  %31 = call i32 @ERR_MASK(i32 %30)
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @qib_handle_6120_hwerrors(%struct.qib_devdata* %35, i8* %36, i32 8)
  br label %64

38:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @QIB_EEP_LOG_CNT, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %44, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @qib_inc_eeprom_err(%struct.qib_devdata* %56, i32 %57, i32 1)
  br label %59

59:                                               ; preds = %55, %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %39

63:                                               ; preds = %39
  br label %64

64:                                               ; preds = %63, %34
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @IB_E_BITSEXTANT, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @IB_E_BITSEXTANT, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %70, %64
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @E_SUM_ERRS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %85 = call i32 @qib_disarm_6120_senderrbufs(%struct.qib_pportdata* %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @E_SUM_LINK_PKTERRS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %92 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @E_SUM_LINK_PKTERRS, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %90, %83
  br label %119

102:                                              ; preds = %78
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @E_SUM_LINK_PKTERRS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %109 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @E_SUM_LINK_PKTERRS, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %114, %107, %102
  br label %119

119:                                              ; preds = %118, %101
  %120 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %121 = load i32, i32* @kr_errclear, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @qib_write_kreg(%struct.qib_devdata* %120, i32 %121, i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %4, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %119
  br label %297

131:                                              ; preds = %119
  %132 = load i32, i32* @IBStatusChanged, align 4
  %133 = call i32 @ERR_MASK(i32 %132)
  %134 = load i32, i32* @RcvEgrFullErr, align 4
  %135 = call i32 @ERR_MASK(i32 %134)
  %136 = or i32 %133, %135
  %137 = load i32, i32* @RcvHdrFullErr, align 4
  %138 = call i32 @ERR_MASK(i32 %137)
  %139 = or i32 %136, %138
  %140 = load i32, i32* @HardwareErr, align 4
  %141 = call i32 @ERR_MASK(i32 %140)
  %142 = or i32 %139, %141
  store i32 %142, i32* %10, align 4
  %143 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %10, align 4
  %147 = xor i32 %146, -1
  %148 = and i32 %145, %147
  %149 = call i32 @qib_decode_6120_err(%struct.qib_devdata* %143, i8* %144, i32 8, i32 %148)
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @E_SUM_PKTERRS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %131
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 3), align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 3), align 4
  br label %157

157:                                              ; preds = %154, %131
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @E_SUM_ERRS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 2), align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 2), align 4
  br label %165

165:                                              ; preds = %162, %157
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @E_SUM_PKTERRS, align 4
  %168 = load i32, i32* @QLOGIC_IB_E_PKTERRS, align 4
  %169 = or i32 %167, %168
  %170 = xor i32 %169, -1
  %171 = and i32 %166, %170
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @IBStatusChanged, align 4
  %174 = call i32 @ERR_MASK(i32 %173)
  %175 = and i32 %172, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %214

177:                                              ; preds = %165
  %178 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %179 = load i32, i32* @kr_ibcstatus, align 4
  %180 = call i32 @qib_read_kreg64(%struct.qib_devdata* %178, i32 %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = call i64 @qib_6120_iblink_state(i32 %181)
  store i64 %182, i64* %12, align 8
  store i32 1, i32* %13, align 4
  %183 = load i64, i64* %12, align 8
  %184 = load i64, i64* @IB_PORT_INIT, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %177
  %187 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %188 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %187, i32 0, i32 3
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @chk_6120_linkrecovery(%struct.qib_devdata* %194, i32 %195)
  store i32 %196, i32* %13, align 4
  br label %197

197:                                              ; preds = %193, %186, %177
  %198 = load i32, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load i32, i32* %11, align 4
  %202 = call i64 @qib_6120_phys_portstate(i32 %201)
  %203 = load i64, i64* @IB_PHYSPORTSTATE_LINK_ERR_RECOVER, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  store i32 0, i32* %13, align 4
  br label %206

206:                                              ; preds = %205, %200, %197
  %207 = load i32, i32* %13, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @qib_handle_e_ibstatuschanged(%struct.qib_pportdata* %210, i32 %211)
  br label %213

213:                                              ; preds = %209, %206
  br label %214

214:                                              ; preds = %213, %165
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @ResetNegated, align 4
  %217 = call i32 @ERR_MASK(i32 %216)
  %218 = and i32 %215, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %244

220:                                              ; preds = %214
  %221 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %222 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %221, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %223 = load i32, i32* @QIB_INITTED, align 4
  %224 = xor i32 %223, -1
  %225 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %226 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load i32, i32* @QIB_STATUS_HWERROR, align 4
  %230 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %231 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %229
  store i32 %234, i32* %232, align 4
  %235 = load i32, i32* @QIB_STATUS_IB_CONF, align 4
  %236 = xor i32 %235, -1
  %237 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %238 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %237, i32 0, i32 0
  %239 = load %struct.qib_pportdata*, %struct.qib_pportdata** %238, align 8
  %240 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %239, i32 0, i32 4
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, %236
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %220, %214
  %245 = load i8*, i8** %5, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %244
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %249
  %253 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %254 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %255 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load i8*, i8** %5, align 8
  %258 = call i32 @qib_dev_porterr(%struct.qib_devdata* %253, i32 %256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %257)
  br label %259

259:                                              ; preds = %252, %249, %244
  %260 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %261 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %264 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = and i32 %262, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %259
  %269 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %270 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %269, i32 0, i32 2
  %271 = call i32 @wake_up_interruptible(i32* %270)
  br label %272

272:                                              ; preds = %268, %259
  %273 = load i32, i32* %4, align 4
  %274 = load i32, i32* @RcvEgrFullErr, align 4
  %275 = call i32 @ERR_MASK(i32 %274)
  %276 = load i32, i32* @RcvHdrFullErr, align 4
  %277 = call i32 @ERR_MASK(i32 %276)
  %278 = or i32 %275, %277
  %279 = and i32 %273, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %296

281:                                              ; preds = %272
  %282 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %283 = call i32 @qib_handle_urcv(%struct.qib_devdata* %282, i32 -1)
  %284 = load i32, i32* %4, align 4
  %285 = load i32, i32* @RcvEgrFullErr, align 4
  %286 = call i32 @ERR_MASK(i32 %285)
  %287 = and i32 %284, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %281
  %290 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 1), align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 1), align 4
  br label %295

292:                                              ; preds = %281
  %293 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 0), align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qib_stats, i32 0, i32 0), align 4
  br label %295

295:                                              ; preds = %292, %289
  br label %296

296:                                              ; preds = %295, %272
  br label %297

297:                                              ; preds = %296, %130
  ret void
}

declare dso_local i32 @ERR_MASK(i32) #1

declare dso_local i32 @qib_handle_6120_hwerrors(%struct.qib_devdata*, i8*, i32) #1

declare dso_local i32 @qib_inc_eeprom_err(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @qib_disarm_6120_senderrbufs(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_decode_6120_err(%struct.qib_devdata*, i8*, i32, i32) #1

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i64 @qib_6120_iblink_state(i32) #1

declare dso_local i32 @chk_6120_linkrecovery(%struct.qib_devdata*, i32) #1

declare dso_local i64 @qib_6120_phys_portstate(i32) #1

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
