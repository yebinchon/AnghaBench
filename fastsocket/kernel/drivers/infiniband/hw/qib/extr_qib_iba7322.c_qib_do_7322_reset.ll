; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_do_7322_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_do_7322_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, %struct.qib_pportdata*, %struct.TYPE_7__*, i32, i32*, i64, i32 }
%struct.qib_pportdata = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Resetting InfiniPath unit %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"No mem to save MSIx data\0A\00", align 1
@QIB_7322_MsixTable_OFFS = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@QIB_PRESENT = common dso_local global i32 0, align 4
@QIB_BADINTR = common dso_local global i32 0, align 4
@QIB_DOING_RESET = common dso_local global i32 0, align 4
@QLOGIC_IB_C_RESET = common dso_local global i32 0, align 4
@kr_control = common dso_local global i64 0, align 8
@kr_revision = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to initialize after reset, unusable\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Reset failed to setup PCIe or interrupts; continuing anyway\0A\00", align 1
@QIBL_IB_FORCE_NOTIFY = common dso_local global i32 0, align 4
@QIBL_IB_AUTONEG_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_do_7322_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_do_7322_reset(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qib_pportdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 1, i32* %7, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %21 = call i32 @qib_pcie_getcmd(%struct.qib_devdata* %20, i32* %8, i32* %9, i32* %10)
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 5
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %28 = call i32 @qib_7322_set_intr_state(%struct.qib_devdata* %27, i32 0)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %1
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %33 = call i32 @qib_7322_nomsix(%struct.qib_devdata* %32)
  %34 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %34, i32 0, i32 5
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 2, %38
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @kmalloc(i32 %42, i32 %43)
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %31
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %49 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %31
  br label %52

51:                                               ; preds = %1
  store i32* null, i32** %4, align 8
  br label %52

52:                                               ; preds = %51, %50
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %99, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %53
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 2, %59
  %61 = sext i32 %60 to i64
  %62 = load i32, i32* @QIB_7322_MsixTable_OFFS, align 4
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %63, 4
  %65 = add i64 %61, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @qib_read_kreg64(%struct.qib_devdata* %58, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = mul nsw i32 2, %69
  %71 = add nsw i32 1, %70
  %72 = sext i32 %71 to i64
  %73 = load i32, i32* @QIB_7322_MsixTable_OFFS, align 4
  %74 = sext i32 %73 to i64
  %75 = udiv i64 %74, 4
  %76 = add i64 %72, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @qib_read_kreg64(%struct.qib_devdata* %68, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %98

81:                                               ; preds = %57
  %82 = load i32, i32* %12, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = mul nsw i32 2, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = and i64 %89, -4294967297
  %91 = trunc i64 %90 to i32
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = mul nsw i32 2, %93
  %95 = add nsw i32 1, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  store i32 %91, i32* %97, align 4
  br label %98

98:                                               ; preds = %81, %57
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %53

102:                                              ; preds = %53
  %103 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %104 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %103, i32 0, i32 4
  %105 = load %struct.qib_pportdata*, %struct.qib_pportdata** %104, align 8
  %106 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %105, i32 0, i32 2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %110 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %109, i32 0, i32 4
  %111 = load %struct.qib_pportdata*, %struct.qib_pportdata** %110, align 8
  %112 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %116 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %115, i32 0, i32 4
  %117 = load %struct.qib_pportdata*, %struct.qib_pportdata** %116, align 8
  %118 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %117, i32 0, i32 2
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %122 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %121, i32 0, i32 4
  %123 = load %struct.qib_pportdata*, %struct.qib_pportdata** %122, align 8
  %124 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %123, i32 0, i32 2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %128 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %127, i32 0, i32 8
  store i64 0, i64* %128, align 8
  %129 = load i32, i32* @QIB_INITTED, align 4
  %130 = load i32, i32* @QIB_PRESENT, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @QIB_BADINTR, align 4
  %133 = or i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %136 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* @QIB_DOING_RESET, align 4
  %140 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %141 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %145 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @QLOGIC_IB_C_RESET, align 4
  %148 = or i32 %146, %147
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %151 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %150, i32 0, i32 7
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @kr_control, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = call i32 @writeq(i32 %149, i32* %154)
  store i32 1, i32* %5, align 4
  br label %156

156:                                              ; preds = %189, %102
  %157 = load i32, i32* %5, align 4
  %158 = icmp sle i32 %157, 5
  br i1 %158, label %159, label %192

159:                                              ; preds = %156
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 1, %160
  %162 = mul nsw i32 %161, 3000
  %163 = add nsw i32 1000, %162
  %164 = call i32 @msleep(i32 %163)
  %165 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @qib_pcie_reenable(%struct.qib_devdata* %165, i32 %166, i32 %167, i32 %168)
  %170 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %171 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %170, i32 0, i32 7
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* @kr_revision, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = call i32 @readq(i32* %174)
  store i32 %175, i32* %3, align 4
  %176 = load i32, i32* %3, align 4
  %177 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %178 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %176, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %159
  br label %192

182:                                              ; preds = %159
  %183 = load i32, i32* %5, align 4
  %184 = icmp eq i32 %183, 5
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %187 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %186, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %345

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %5, align 4
  br label %156

192:                                              ; preds = %181, %156
  %193 = load i32, i32* @QIB_PRESENT, align 4
  %194 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %195 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %267

200:                                              ; preds = %192
  store i32 0, i32* %5, align 4
  br label %201

201:                                              ; preds = %263, %200
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %266

205:                                              ; preds = %201
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %208 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %207, i32 0, i32 5
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  store i32 %206, i32* %216, align 4
  %217 = load i32*, i32** %4, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %227

219:                                              ; preds = %205
  %220 = load i32*, i32** %4, align 8
  %221 = load i32, i32* %5, align 4
  %222 = mul nsw i32 2, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %219, %205
  br label %263

228:                                              ; preds = %219
  %229 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %230 = load i32, i32* %5, align 4
  %231 = mul nsw i32 2, %230
  %232 = sext i32 %231 to i64
  %233 = load i32, i32* @QIB_7322_MsixTable_OFFS, align 4
  %234 = sext i32 %233 to i64
  %235 = udiv i64 %234, 4
  %236 = add i64 %232, %235
  %237 = trunc i64 %236 to i32
  %238 = load i32*, i32** %4, align 8
  %239 = load i32, i32* %5, align 4
  %240 = mul nsw i32 2, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @qib_write_kreg(%struct.qib_devdata* %229, i32 %237, i32 %243)
  %245 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %246 = load i32, i32* %5, align 4
  %247 = mul nsw i32 2, %246
  %248 = add nsw i32 1, %247
  %249 = sext i32 %248 to i64
  %250 = load i32, i32* @QIB_7322_MsixTable_OFFS, align 4
  %251 = sext i32 %250 to i64
  %252 = udiv i64 %251, 4
  %253 = add i64 %249, %252
  %254 = trunc i64 %253 to i32
  %255 = load i32*, i32** %4, align 8
  %256 = load i32, i32* %5, align 4
  %257 = mul nsw i32 2, %256
  %258 = add nsw i32 1, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %255, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @qib_write_kreg(%struct.qib_devdata* %245, i32 %254, i32 %261)
  br label %263

263:                                              ; preds = %228, %227
  %264 = load i32, i32* %5, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %5, align 4
  br label %201

266:                                              ; preds = %201
  br label %267

267:                                              ; preds = %266, %192
  store i32 0, i32* %5, align 4
  br label %268

268:                                              ; preds = %282, %267
  %269 = load i32, i32* %5, align 4
  %270 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %271 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %285

274:                                              ; preds = %268
  %275 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %276 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %275, i32 0, i32 4
  %277 = load %struct.qib_pportdata*, %struct.qib_pportdata** %276, align 8
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %277, i64 %279
  %281 = call i32 @write_7322_init_portregs(%struct.qib_pportdata* %280)
  br label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %5, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %5, align 4
  br label %268

285:                                              ; preds = %268
  %286 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %287 = call i32 @write_7322_initregs(%struct.qib_devdata* %286)
  %288 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %289 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %290 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %293 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %292, i32 0, i32 5
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 0
  %296 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %297 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %296, i32 0, i32 5
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %299, align 8
  %301 = call i64 @qib_pcie_params(%struct.qib_devdata* %288, i32 %291, i32* %295, %struct.TYPE_8__* %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %285
  %304 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %305 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %304, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  br label %306

306:                                              ; preds = %303, %285
  %307 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %308 = call i32 @qib_setup_7322_interrupt(%struct.qib_devdata* %307, i32 1)
  store i32 0, i32* %5, align 4
  br label %309

309:                                              ; preds = %341, %306
  %310 = load i32, i32* %5, align 4
  %311 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %312 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = icmp slt i32 %310, %313
  br i1 %314, label %315, label %344

315:                                              ; preds = %309
  %316 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %317 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %316, i32 0, i32 4
  %318 = load %struct.qib_pportdata*, %struct.qib_pportdata** %317, align 8
  %319 = load i32, i32* %5, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %318, i64 %320
  store %struct.qib_pportdata* %321, %struct.qib_pportdata** %14, align 8
  %322 = load %struct.qib_pportdata*, %struct.qib_pportdata** %14, align 8
  %323 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %322, i32 0, i32 0
  %324 = load i64, i64* %11, align 8
  %325 = call i32 @spin_lock_irqsave(i32* %323, i64 %324)
  %326 = load i32, i32* @QIBL_IB_FORCE_NOTIFY, align 4
  %327 = load %struct.qib_pportdata*, %struct.qib_pportdata** %14, align 8
  %328 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 4
  %331 = load i32, i32* @QIBL_IB_AUTONEG_FAILED, align 4
  %332 = xor i32 %331, -1
  %333 = load %struct.qib_pportdata*, %struct.qib_pportdata** %14, align 8
  %334 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = and i32 %335, %332
  store i32 %336, i32* %334, align 4
  %337 = load %struct.qib_pportdata*, %struct.qib_pportdata** %14, align 8
  %338 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %337, i32 0, i32 0
  %339 = load i64, i64* %11, align 8
  %340 = call i32 @spin_unlock_irqrestore(i32* %338, i64 %339)
  br label %341

341:                                              ; preds = %315
  %342 = load i32, i32* %5, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %5, align 4
  br label %309

344:                                              ; preds = %309
  br label %345

345:                                              ; preds = %344, %185
  %346 = load i32, i32* @QIB_DOING_RESET, align 4
  %347 = xor i32 %346, -1
  %348 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %349 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = and i32 %350, %347
  store i32 %351, i32* %349, align 8
  %352 = load i32*, i32** %4, align 8
  %353 = call i32 @kfree(i32* %352)
  %354 = load i32, i32* %7, align 4
  ret i32 %354
}

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @qib_pcie_getcmd(%struct.qib_devdata*, i32*, i32*, i32*) #1

declare dso_local i32 @qib_7322_set_intr_state(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_7322_nomsix(%struct.qib_devdata*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qib_pcie_reenable(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @readq(i32*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @write_7322_init_portregs(%struct.qib_pportdata*) #1

declare dso_local i32 @write_7322_initregs(%struct.qib_devdata*) #1

declare dso_local i64 @qib_pcie_params(%struct.qib_devdata*, i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @qib_setup_7322_interrupt(%struct.qib_devdata*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
