; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_process_subn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_process_subn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { i32 }
%struct.ib_smp = type { i32, i64, i32, i32, i32 }
%struct.ipath_ibdev = type { i32, i64, i32, i32, i32, i64 }

@IB_SMP_UNSUP_VERSION = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IB_PORT_SM_DISABLED = common dso_local global i32 0, align 4
@IB_PORT_SM = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METH_ATTR = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_mad*, %struct.ib_mad*)* @process_subn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_subn(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_mad* %3, %struct.ib_mad* %4) #0 {
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_mad*, align 8
  %10 = alloca %struct.ib_mad*, align 8
  %11 = alloca %struct.ib_smp*, align 8
  %12 = alloca %struct.ipath_ibdev*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_mad* %3, %struct.ib_mad** %9, align 8
  store %struct.ib_mad* %4, %struct.ib_mad** %10, align 8
  %14 = load %struct.ib_mad*, %struct.ib_mad** %10, align 8
  %15 = bitcast %struct.ib_mad* %14 to %struct.ib_smp*
  store %struct.ib_smp* %15, %struct.ib_smp** %11, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %17 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %16)
  store %struct.ipath_ibdev* %17, %struct.ipath_ibdev** %12, align 8
  %18 = load %struct.ib_mad*, %struct.ib_mad** %10, align 8
  %19 = load %struct.ib_mad*, %struct.ib_mad** %9, align 8
  %20 = bitcast %struct.ib_mad* %18 to i8*
  %21 = bitcast %struct.ib_mad* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %23 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load i32, i32* @IB_SMP_UNSUP_VERSION, align 4
  %28 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %29 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %33 = call i32 @reply(%struct.ib_smp* %32)
  store i32 %33, i32* %13, align 4
  br label %247

34:                                               ; preds = %5
  %35 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %36 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i64, i64* @jiffies, align 8
  %41 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %42 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @time_after_eq(i64 %40, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %48 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %50 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %39, %34
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %122

56:                                               ; preds = %51
  %57 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %58 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %122

61:                                               ; preds = %56
  %62 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %63 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %66 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %122

69:                                               ; preds = %61
  %70 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %71 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 136
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %76 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 140
  br i1 %78, label %79, label %122

79:                                               ; preds = %74
  %80 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %81 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sge i32 %82, 2
  br i1 %83, label %84, label %122

84:                                               ; preds = %79, %69
  %85 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %86 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 65535
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %91 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %96 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %101 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99, %94
  %105 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %106 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %13, align 4
  br label %247

108:                                              ; preds = %99
  %109 = load i64, i64* @jiffies, align 8
  %110 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %111 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @HZ, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %109, %115
  %117 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %118 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %117, i32 0, i32 5
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %120 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %13, align 4
  br label %247

122:                                              ; preds = %79, %74, %61, %56, %51
  %123 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %124 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %129 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %128, i32 0, i32 5
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %127, %122
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %133 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  switch i32 %134, label %238 [
    i32 140, label %135
    i32 136, label %190
    i32 135, label %236
    i32 138, label %236
    i32 137, label %236
    i32 134, label %236
    i32 139, label %236
  ]

135:                                              ; preds = %131
  %136 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %137 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  switch i32 %138, label %182 [
    i32 132, label %139
    i32 131, label %143
    i32 133, label %148
    i32 129, label %152
    i32 130, label %157
    i32 128, label %161
  ]

139:                                              ; preds = %135
  %140 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %141 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %142 = call i32 @recv_subn_get_nodedescription(%struct.ib_smp* %140, %struct.ib_device* %141)
  store i32 %142, i32* %13, align 4
  br label %247

143:                                              ; preds = %135
  %144 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %145 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @recv_subn_get_nodeinfo(%struct.ib_smp* %144, %struct.ib_device* %145, i32 %146)
  store i32 %147, i32* %13, align 4
  br label %247

148:                                              ; preds = %135
  %149 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %150 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %151 = call i32 @recv_subn_get_guidinfo(%struct.ib_smp* %149, %struct.ib_device* %150)
  store i32 %151, i32* %13, align 4
  br label %247

152:                                              ; preds = %135
  %153 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %154 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @recv_subn_get_portinfo(%struct.ib_smp* %153, %struct.ib_device* %154, i32 %155)
  store i32 %156, i32* %13, align 4
  br label %247

157:                                              ; preds = %135
  %158 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %159 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %160 = call i32 @recv_subn_get_pkeytable(%struct.ib_smp* %158, %struct.ib_device* %159)
  store i32 %160, i32* %13, align 4
  br label %247

161:                                              ; preds = %135
  %162 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %163 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @IB_PORT_SM_DISABLED, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %170 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %171 = or i32 %169, %170
  store i32 %171, i32* %13, align 4
  br label %247

172:                                              ; preds = %161
  %173 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %174 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @IB_PORT_SM, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %180, i32* %13, align 4
  br label %247

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %135, %181
  %183 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %184 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %185 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  %188 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %189 = call i32 @reply(%struct.ib_smp* %188)
  store i32 %189, i32* %13, align 4
  br label %247

190:                                              ; preds = %131
  %191 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %192 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  switch i32 %193, label %228 [
    i32 133, label %194
    i32 129, label %198
    i32 130, label %203
    i32 128, label %207
  ]

194:                                              ; preds = %190
  %195 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %196 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %197 = call i32 @recv_subn_set_guidinfo(%struct.ib_smp* %195, %struct.ib_device* %196)
  store i32 %197, i32* %13, align 4
  br label %247

198:                                              ; preds = %190
  %199 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %200 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @recv_subn_set_portinfo(%struct.ib_smp* %199, %struct.ib_device* %200, i32 %201)
  store i32 %202, i32* %13, align 4
  br label %247

203:                                              ; preds = %190
  %204 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %205 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %206 = call i32 @recv_subn_set_pkeytable(%struct.ib_smp* %204, %struct.ib_device* %205)
  store i32 %206, i32* %13, align 4
  br label %247

207:                                              ; preds = %190
  %208 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %209 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @IB_PORT_SM_DISABLED, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %207
  %215 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %216 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %217 = or i32 %215, %216
  store i32 %217, i32* %13, align 4
  br label %247

218:                                              ; preds = %207
  %219 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %12, align 8
  %220 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @IB_PORT_SM, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %218
  %226 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %226, i32* %13, align 4
  br label %247

227:                                              ; preds = %218
  br label %228

228:                                              ; preds = %190, %227
  %229 = load i32, i32* @IB_SMP_UNSUP_METH_ATTR, align 4
  %230 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %231 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %235 = call i32 @reply(%struct.ib_smp* %234)
  store i32 %235, i32* %13, align 4
  br label %247

236:                                              ; preds = %131, %131, %131, %131, %131
  %237 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %237, i32* %13, align 4
  br label %247

238:                                              ; preds = %131
  %239 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %240 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %241 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 4
  %244 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %245 = call i32 @reply(%struct.ib_smp* %244)
  store i32 %245, i32* %13, align 4
  br label %246

246:                                              ; preds = %238
  br label %247

247:                                              ; preds = %246, %236, %228, %225, %214, %203, %198, %194, %182, %179, %168, %157, %152, %148, %143, %139, %108, %104, %26
  %248 = load i32, i32* %13, align 4
  ret i32 %248
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @recv_subn_get_nodedescription(%struct.ib_smp*, %struct.ib_device*) #1

declare dso_local i32 @recv_subn_get_nodeinfo(%struct.ib_smp*, %struct.ib_device*, i32) #1

declare dso_local i32 @recv_subn_get_guidinfo(%struct.ib_smp*, %struct.ib_device*) #1

declare dso_local i32 @recv_subn_get_portinfo(%struct.ib_smp*, %struct.ib_device*, i32) #1

declare dso_local i32 @recv_subn_get_pkeytable(%struct.ib_smp*, %struct.ib_device*) #1

declare dso_local i32 @recv_subn_set_guidinfo(%struct.ib_smp*, %struct.ib_device*) #1

declare dso_local i32 @recv_subn_set_portinfo(%struct.ib_smp*, %struct.ib_device*, i32) #1

declare dso_local i32 @recv_subn_set_pkeytable(%struct.ib_smp*, %struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
