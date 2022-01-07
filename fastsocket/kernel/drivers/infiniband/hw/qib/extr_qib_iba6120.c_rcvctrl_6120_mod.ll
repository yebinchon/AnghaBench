; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_rcvctrl_6120_mod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_rcvctrl_6120_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata* }
%struct.qib_devdata = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@QIB_RCVCTRL_TAILUPD_ENB = common dso_local global i32 0, align 4
@QLOGIC_IB_R_TAILUPD_SHIFT = common dso_local global i64 0, align 8
@QIB_RCVCTRL_TAILUPD_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_PKEY_ENB = common dso_local global i32 0, align 4
@IBA6120_R_PKEY_DIS_SHIFT = common dso_local global i64 0, align 8
@QIB_RCVCTRL_PKEY_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_CTXT_ENB = common dso_local global i32 0, align 4
@RcvCtrl = common dso_local global i32 0, align 4
@PortEnable = common dso_local global i32 0, align 4
@QIB_NODMA_RTAIL = common dso_local global i32 0, align 4
@kr_rcvhdrtailaddr = common dso_local global i32 0, align 4
@kr_rcvhdraddr = common dso_local global i32 0, align 4
@QIB_RCVCTRL_CTXT_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_INTRAVAIL_ENB = common dso_local global i32 0, align 4
@QLOGIC_IB_R_INTRAVAIL_SHIFT = common dso_local global i32 0, align 4
@QIB_RCVCTRL_INTRAVAIL_DIS = common dso_local global i32 0, align 4
@kr_rcvctrl = common dso_local global i32 0, align 4
@ur_rcvhdrhead = common dso_local global i32 0, align 4
@ur_rcvegrindextail = common dso_local global i32 0, align 4
@ur_rcvegrindexhead = common dso_local global i32 0, align 4
@ur_rcvhdrtail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32, i32)* @rcvctrl_6120_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcvctrl_6120_mod(%struct.qib_pportdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %13 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %12, i32 0, i32 0
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %13, align 8
  store %struct.qib_devdata* %14, %struct.qib_devdata** %7, align 8
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @QIB_RCVCTRL_TAILUPD_ENB, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i64, i64* @QLOGIC_IB_R_TAILUPD_SHIFT, align 8
  %27 = shl i64 1, %26
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = or i64 %30, %27
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %25, %3
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @QIB_RCVCTRL_TAILUPD_DIS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i64, i64* @QLOGIC_IB_R_TAILUPD_SHIFT, align 8
  %39 = shl i64 1, %38
  %40 = xor i64 %39, -1
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @QIB_RCVCTRL_PKEY_ENB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i64, i64* @IBA6120_R_PKEY_DIS_SHIFT, align 8
  %52 = shl i64 1, %51
  %53 = xor i64 %52, -1
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = and i64 %56, %53
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @QIB_RCVCTRL_PKEY_DIS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i64, i64* @IBA6120_R_PKEY_DIS_SHIFT, align 8
  %65 = shl i64 1, %64
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %67 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = or i64 %68, %65
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %75 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = shl i64 1, %76
  %78 = sub i64 %77, 1
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %8, align 4
  br label %85

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = shl i64 1, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %80, %73
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @QIB_RCVCTRL_CTXT_ENB, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %154

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @RcvCtrl, align 4
  %93 = load i32, i32* @PortEnable, align 4
  %94 = call i32 @SYM_LSB(i32 %92, i32 %93)
  %95 = shl i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %98 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %102 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @QIB_NODMA_RTAIL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %90
  %108 = load i64, i64* @QLOGIC_IB_R_TAILUPD_SHIFT, align 8
  %109 = shl i64 1, %108
  %110 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %111 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = or i64 %112, %109
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %107, %90
  %115 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %116 = load i32, i32* @kr_rcvhdrtailaddr, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %119 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %118, i32 0, i32 7
  %120 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %120, i64 %122
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @qib_write_kreg_ctxt(%struct.qib_devdata* %115, i32 %116, i32 %117, i32 %126)
  %128 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %129 = load i32, i32* @kr_rcvhdraddr, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %132 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %131, i32 0, i32 7
  %133 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %133, i64 %135
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @qib_write_kreg_ctxt(%struct.qib_devdata* %128, i32 %129, i32 %130, i32 %139)
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %114
  %144 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %145 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %144, i32 0, i32 6
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %143
  %151 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %152 = call i32 @alloc_dummy_hdrq(%struct.qib_devdata* %151)
  br label %153

153:                                              ; preds = %150, %143, %114
  br label %154

154:                                              ; preds = %153, %85
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @QIB_RCVCTRL_CTXT_DIS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %154
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @RcvCtrl, align 4
  %162 = load i32, i32* @PortEnable, align 4
  %163 = call i32 @SYM_LSB(i32 %161, i32 %162)
  %164 = shl i32 %160, %163
  %165 = xor i32 %164, -1
  %166 = sext i32 %165 to i64
  %167 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %168 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = and i64 %169, %166
  store i64 %170, i64* %168, align 8
  br label %171

171:                                              ; preds = %159, %154
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_ENB, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %171
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @QLOGIC_IB_R_INTRAVAIL_SHIFT, align 4
  %179 = shl i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %182 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = or i64 %183, %180
  store i64 %184, i64* %182, align 8
  br label %185

185:                                              ; preds = %176, %171
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_DIS, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %185
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @QLOGIC_IB_R_INTRAVAIL_SHIFT, align 4
  %193 = shl i32 %191, %192
  %194 = xor i32 %193, -1
  %195 = sext i32 %194 to i64
  %196 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %197 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = and i64 %198, %195
  store i64 %199, i64* %197, align 8
  br label %200

200:                                              ; preds = %190, %185
  %201 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %202 = load i32, i32* @kr_rcvctrl, align 4
  %203 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %204 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = call i32 @qib_write_kreg(%struct.qib_devdata* %201, i32 %202, i32 %206)
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_ENB, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %231

212:                                              ; preds = %200
  %213 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %214 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %212
  %218 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %219 = load i32, i32* @ur_rcvhdrhead, align 4
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @qib_read_ureg32(%struct.qib_devdata* %218, i32 %219, i32 %220)
  %222 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %223 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %221, %224
  store i32 %225, i32* %9, align 4
  %226 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %227 = load i32, i32* @ur_rcvhdrhead, align 4
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @qib_write_ureg(%struct.qib_devdata* %226, i32 %227, i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %217, %212, %200
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @QIB_RCVCTRL_CTXT_ENB, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %276

236:                                              ; preds = %231
  %237 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %238 = load i32, i32* @ur_rcvegrindextail, align 4
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @qib_read_ureg32(%struct.qib_devdata* %237, i32 %238, i32 %239)
  store i32 %240, i32* %9, align 4
  %241 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %242 = load i32, i32* @ur_rcvegrindexhead, align 4
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @qib_write_ureg(%struct.qib_devdata* %241, i32 %242, i32 %243, i32 %244)
  %246 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %247 = load i32, i32* @ur_rcvhdrtail, align 4
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @qib_read_ureg32(%struct.qib_devdata* %246, i32 %247, i32 %248)
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %9, align 4
  %251 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %252 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %251, i32 0, i32 7
  %253 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %252, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %253, i64 %255
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 0
  store i32 %250, i32* %258, align 4
  %259 = load i32, i32* %6, align 4
  %260 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %261 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %236
  %265 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %266 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %9, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %9, align 4
  br label %270

270:                                              ; preds = %264, %236
  %271 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %272 = load i32, i32* @ur_rcvhdrhead, align 4
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* %6, align 4
  %275 = call i32 @qib_write_ureg(%struct.qib_devdata* %271, i32 %272, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %270, %231
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* @QIB_RCVCTRL_CTXT_DIS, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %334

281:                                              ; preds = %276
  %282 = load i32, i32* %6, align 4
  %283 = icmp sge i32 %282, 0
  br i1 %283, label %284, label %303

284:                                              ; preds = %281
  %285 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %286 = load i32, i32* @kr_rcvhdrtailaddr, align 4
  %287 = load i32, i32* %6, align 4
  %288 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %289 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %288, i32 0, i32 6
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @qib_write_kreg_ctxt(%struct.qib_devdata* %285, i32 %286, i32 %287, i32 %292)
  %294 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %295 = load i32, i32* @kr_rcvhdraddr, align 4
  %296 = load i32, i32* %6, align 4
  %297 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %298 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %297, i32 0, i32 6
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @qib_write_kreg_ctxt(%struct.qib_devdata* %294, i32 %295, i32 %296, i32 %301)
  br label %333

303:                                              ; preds = %281
  store i32 0, i32* %11, align 4
  br label %304

304:                                              ; preds = %329, %303
  %305 = load i32, i32* %11, align 4
  %306 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %307 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = icmp ult i32 %305, %308
  br i1 %309, label %310, label %332

310:                                              ; preds = %304
  %311 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %312 = load i32, i32* @kr_rcvhdrtailaddr, align 4
  %313 = load i32, i32* %11, align 4
  %314 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %315 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %314, i32 0, i32 6
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @qib_write_kreg_ctxt(%struct.qib_devdata* %311, i32 %312, i32 %313, i32 %318)
  %320 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %321 = load i32, i32* @kr_rcvhdraddr, align 4
  %322 = load i32, i32* %11, align 4
  %323 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %324 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %323, i32 0, i32 6
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @qib_write_kreg_ctxt(%struct.qib_devdata* %320, i32 %321, i32 %322, i32 %327)
  br label %329

329:                                              ; preds = %310
  %330 = load i32, i32* %11, align 4
  %331 = add i32 %330, 1
  store i32 %331, i32* %11, align 4
  br label %304

332:                                              ; preds = %304
  br label %333

333:                                              ; preds = %332, %284
  br label %334

334:                                              ; preds = %333, %276
  %335 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %336 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %335, i32 0, i32 6
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 0
  %339 = load i64, i64* %10, align 8
  %340 = call i32 @spin_unlock_irqrestore(i32* %338, i64 %339)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SYM_LSB(i32, i32) #1

declare dso_local i32 @qib_write_kreg_ctxt(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @alloc_dummy_hdrq(%struct.qib_devdata*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_read_ureg32(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_write_ureg(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
