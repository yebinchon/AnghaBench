; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_process_subn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_process_subn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64 }
%struct.ib_mad = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ib_smp = type { i32, i32, i32, i32*, i32, i32 }
%struct.qib_ibport = type { i32 }
%struct.qib_pportdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.qib_pportdata*, i32, i32)* }

@IB_SMP_UNSUP_VERSION = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_PORT_SM_DISABLED = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_PORT_SM = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METH_ATTR = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NOTICE = common dso_local global i32 0, align 4
@QIB_VENDOR_IPG = common dso_local global i32 0, align 4
@QIB_IB_CFG_PORT = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i64, %struct.ib_mad*, %struct.ib_mad*)* @process_subn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_subn(%struct.ib_device* %0, i32 %1, i64 %2, %struct.ib_mad* %3, %struct.ib_mad* %4) #0 {
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ib_mad*, align 8
  %10 = alloca %struct.ib_mad*, align 8
  %11 = alloca %struct.ib_smp*, align 8
  %12 = alloca %struct.qib_ibport*, align 8
  %13 = alloca %struct.qib_pportdata*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.ib_mad* %3, %struct.ib_mad** %9, align 8
  store %struct.ib_mad* %4, %struct.ib_mad** %10, align 8
  %16 = load %struct.ib_mad*, %struct.ib_mad** %10, align 8
  %17 = bitcast %struct.ib_mad* %16 to %struct.ib_smp*
  store %struct.ib_smp* %17, %struct.ib_smp** %11, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %18, i64 %19)
  store %struct.qib_ibport* %20, %struct.qib_ibport** %12, align 8
  %21 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %22 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %21)
  store %struct.qib_pportdata* %22, %struct.qib_pportdata** %13, align 8
  %23 = load %struct.ib_mad*, %struct.ib_mad** %10, align 8
  %24 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %25 = bitcast %struct.ib_mad* %23 to i8*
  %26 = bitcast %struct.ib_mad* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  %27 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %28 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %5
  %32 = load i32, i32* @IB_SMP_UNSUP_VERSION, align 4
  %33 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %34 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %38 = call i32 @reply(%struct.ib_smp* %37)
  store i32 %38, i32* %14, align 4
  br label %277

39:                                               ; preds = %5
  %40 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %41 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @check_mkey(%struct.qib_ibport* %40, %struct.ib_smp* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %39
  %47 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %48 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @be32_to_cpu(i32 %49)
  store i64 %50, i64* %15, align 8
  %51 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %52 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 131
  br i1 %55, label %56, label %85

56:                                               ; preds = %46
  %57 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %58 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 143
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %63 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 138
  br i1 %65, label %66, label %85

66:                                               ; preds = %61, %56
  %67 = load i64, i64* %15, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i64, i64* %15, align 8
  %71 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %72 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %70, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %15, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %80, i64 %81)
  %83 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %84 = call i32 @check_mkey(%struct.qib_ibport* %82, %struct.ib_smp* %83, i32 0)
  br label %85

85:                                               ; preds = %79, %75, %69, %66, %61, %46
  %86 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %86, i32* %14, align 4
  br label %277

87:                                               ; preds = %39
  %88 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %89 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %268 [
    i32 143, label %91
    i32 138, label %158
    i32 136, label %216
    i32 137, label %236
    i32 141, label %236
    i32 140, label %236
    i32 142, label %236
    i32 139, label %238
  ]

91:                                               ; preds = %87
  %92 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %93 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %150 [
    i32 134, label %95
    i32 133, label %99
    i32 135, label %104
    i32 131, label %109
    i32 132, label %114
    i32 130, label %119
    i32 128, label %124
    i32 129, label %129
  ]

95:                                               ; preds = %91
  %96 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %97 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %98 = call i32 @subn_get_nodedescription(%struct.ib_smp* %96, %struct.ib_device* %97)
  store i32 %98, i32* %14, align 4
  br label %277

99:                                               ; preds = %91
  %100 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %101 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @subn_get_nodeinfo(%struct.ib_smp* %100, %struct.ib_device* %101, i64 %102)
  store i32 %103, i32* %14, align 4
  br label %277

104:                                              ; preds = %91
  %105 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %106 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @subn_get_guidinfo(%struct.ib_smp* %105, %struct.ib_device* %106, i64 %107)
  store i32 %108, i32* %14, align 4
  br label %277

109:                                              ; preds = %91
  %110 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %111 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @subn_get_portinfo(%struct.ib_smp* %110, %struct.ib_device* %111, i64 %112)
  store i32 %113, i32* %14, align 4
  br label %277

114:                                              ; preds = %91
  %115 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %116 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @subn_get_pkeytable(%struct.ib_smp* %115, %struct.ib_device* %116, i64 %117)
  store i32 %118, i32* %14, align 4
  br label %277

119:                                              ; preds = %91
  %120 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %121 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @subn_get_sl_to_vl(%struct.ib_smp* %120, %struct.ib_device* %121, i64 %122)
  store i32 %123, i32* %14, align 4
  br label %277

124:                                              ; preds = %91
  %125 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %126 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @subn_get_vl_arb(%struct.ib_smp* %125, %struct.ib_device* %126, i64 %127)
  store i32 %128, i32* %14, align 4
  br label %277

129:                                              ; preds = %91
  %130 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %131 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IB_PORT_SM_DISABLED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %138 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* %14, align 4
  br label %277

140:                                              ; preds = %129
  %141 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %142 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IB_PORT_SM, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %148, i32* %14, align 4
  br label %277

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %91, %149
  %151 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %152 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %153 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %157 = call i32 @reply(%struct.ib_smp* %156)
  store i32 %157, i32* %14, align 4
  br label %277

158:                                              ; preds = %87
  %159 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %160 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  switch i32 %161, label %208 [
    i32 135, label %162
    i32 131, label %167
    i32 132, label %172
    i32 130, label %177
    i32 128, label %182
    i32 129, label %187
  ]

162:                                              ; preds = %158
  %163 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %164 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %165 = load i64, i64* %8, align 8
  %166 = call i32 @subn_set_guidinfo(%struct.ib_smp* %163, %struct.ib_device* %164, i64 %165)
  store i32 %166, i32* %14, align 4
  br label %277

167:                                              ; preds = %158
  %168 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %169 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %170 = load i64, i64* %8, align 8
  %171 = call i32 @subn_set_portinfo(%struct.ib_smp* %168, %struct.ib_device* %169, i64 %170)
  store i32 %171, i32* %14, align 4
  br label %277

172:                                              ; preds = %158
  %173 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %174 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %175 = load i64, i64* %8, align 8
  %176 = call i32 @subn_set_pkeytable(%struct.ib_smp* %173, %struct.ib_device* %174, i64 %175)
  store i32 %176, i32* %14, align 4
  br label %277

177:                                              ; preds = %158
  %178 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %179 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %180 = load i64, i64* %8, align 8
  %181 = call i32 @subn_set_sl_to_vl(%struct.ib_smp* %178, %struct.ib_device* %179, i64 %180)
  store i32 %181, i32* %14, align 4
  br label %277

182:                                              ; preds = %158
  %183 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %184 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %185 = load i64, i64* %8, align 8
  %186 = call i32 @subn_set_vl_arb(%struct.ib_smp* %183, %struct.ib_device* %184, i64 %185)
  store i32 %186, i32* %14, align 4
  br label %277

187:                                              ; preds = %158
  %188 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %189 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @IB_PORT_SM_DISABLED, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %196 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %197 = or i32 %195, %196
  store i32 %197, i32* %14, align 4
  br label %277

198:                                              ; preds = %187
  %199 = load %struct.qib_ibport*, %struct.qib_ibport** %12, align 8
  %200 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @IB_PORT_SM, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %206, i32* %14, align 4
  br label %277

207:                                              ; preds = %198
  br label %208

208:                                              ; preds = %158, %207
  %209 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %210 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %211 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 8
  %214 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %215 = call i32 @reply(%struct.ib_smp* %214)
  store i32 %215, i32* %14, align 4
  br label %277

216:                                              ; preds = %87
  %217 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %218 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @IB_SMP_ATTR_NOTICE, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %216
  %223 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %224 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %225 = load i64, i64* %8, align 8
  %226 = call i32 @subn_trap_repress(%struct.ib_smp* %223, %struct.ib_device* %224, i64 %225)
  store i32 %226, i32* %14, align 4
  br label %235

227:                                              ; preds = %216
  %228 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %229 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %230 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  %233 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %234 = call i32 @reply(%struct.ib_smp* %233)
  store i32 %234, i32* %14, align 4
  br label %235

235:                                              ; preds = %227, %222
  br label %277

236:                                              ; preds = %87, %87, %87, %87
  %237 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %237, i32* %14, align 4
  br label %277

238:                                              ; preds = %87
  %239 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %240 = call i32 @ib_get_smp_direction(%struct.ib_smp* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %265

242:                                              ; preds = %238
  %243 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %244 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @QIB_VENDOR_IPG, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %265

248:                                              ; preds = %242
  %249 = load %struct.qib_pportdata*, %struct.qib_pportdata** %13, align 8
  %250 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %249, i32 0, i32 0
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %252, align 8
  %254 = load %struct.qib_pportdata*, %struct.qib_pportdata** %13, align 8
  %255 = load i32, i32* @QIB_IB_CFG_PORT, align 4
  %256 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %257 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 %253(%struct.qib_pportdata* %254, i32 %255, i32 %260)
  %262 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %263 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %264 = or i32 %262, %263
  store i32 %264, i32* %14, align 4
  br label %267

265:                                              ; preds = %242, %238
  %266 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %266, i32* %14, align 4
  br label %267

267:                                              ; preds = %265, %248
  br label %277

268:                                              ; preds = %87
  %269 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %270 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %271 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 8
  %274 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %275 = call i32 @reply(%struct.ib_smp* %274)
  store i32 %275, i32* %14, align 4
  br label %276

276:                                              ; preds = %268
  br label %277

277:                                              ; preds = %276, %267, %236, %235, %208, %205, %194, %182, %177, %172, %167, %162, %150, %147, %136, %124, %119, %114, %109, %104, %99, %95, %85, %31
  %278 = load i32, i32* %14, align 4
  ret i32 %278
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local i32 @check_mkey(%struct.qib_ibport*, %struct.ib_smp*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @subn_get_nodedescription(%struct.ib_smp*, %struct.ib_device*) #1

declare dso_local i32 @subn_get_nodeinfo(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_get_guidinfo(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_get_portinfo(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_get_pkeytable(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_get_sl_to_vl(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_get_vl_arb(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_set_guidinfo(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_set_portinfo(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_set_pkeytable(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_set_sl_to_vl(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_set_vl_arb(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @subn_trap_repress(%struct.ib_smp*, %struct.ib_device*, i64) #1

declare dso_local i32 @ib_get_smp_direction(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
