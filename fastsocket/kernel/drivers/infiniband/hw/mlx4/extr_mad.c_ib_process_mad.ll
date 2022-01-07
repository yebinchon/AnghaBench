; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_ib_process_mad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_ib_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i64, i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.ib_grh = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.ib_mad = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64, i64, i32 }
%struct.ib_port_attr = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [90 x i8] c"received MAD: slid:%d sqpn:%d dlid_bits:%d dqpn:%d wc_flags:0x%x, cls %x, mtd %x, atr %x\0A\00", align 1
@IB_WC_GRH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"sgid_hi:0x%016llx sgid_lo:0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"dgid_hi:0x%016llx dgid_lo:0x%016llx\0A\00", align 1
@IB_LID_PERMISSIVE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_TRAP = common dso_local global i64 0, align 8
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_TRAP_REPRESS = common dso_local global i64 0, align 8
@IB_SMP_ATTR_SM_INFO = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@MLX4_IB_VENDOR_CLASS1 = common dso_local global i64 0, align 8
@MLX4_IB_VENDOR_CLASS2 = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_CONG_MGMT = common dso_local global i64 0, align 8
@IB_SMP_ATTR_PORT_INFO = common dso_local global i64 0, align 8
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_IGNORE_MKEY = common dso_local global i32 0, align 4
@IB_MAD_IGNORE_BKEY = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_IGNORE_BKEY = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_NET_VIEW = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV = common dso_local global i32 0, align 4
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*)* @ib_process_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad* %5, %struct.ib_mad* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wc*, align 8
  %13 = alloca %struct.ib_grh*, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca %struct.ib_mad*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ib_port_attr, align 8
  store %struct.ib_device* %0, %struct.ib_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %12, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %13, align 8
  store %struct.ib_mad* %5, %struct.ib_mad** %14, align 8
  store %struct.ib_mad* %6, %struct.ib_mad** %15, align 8
  store i64 0, i64* %17, align 8
  %20 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %21 = icmp ne %struct.ib_wc* %20, null
  br i1 %21, label %22, label %97

22:                                               ; preds = %7
  %23 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %24 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %97

29:                                               ; preds = %22
  %30 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %31 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %34 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %37 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %40 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %45 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %48 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %52 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %56 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @be16_to_cpu(i64 %58)
  %60 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %35, i32 %38, i64 %43, i32 %46, i64 %50, i64 %54, i64 %59)
  %61 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IB_WC_GRH, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %29
  %68 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %69 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be64_to_cpu(i32 %72)
  %74 = sext i32 %73 to i64
  %75 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %76 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be64_to_cpu(i32 %79)
  %81 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %74, i32 %80)
  %82 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %83 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @be64_to_cpu(i32 %86)
  %88 = sext i32 %87 to i64
  %89 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %90 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @be64_to_cpu(i32 %93)
  %95 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %88, i32 %94)
  br label %96

96:                                               ; preds = %67, %29
  br label %97

97:                                               ; preds = %96, %22, %7
  %98 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %99 = icmp ne %struct.ib_wc* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %102 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  br label %107

104:                                              ; preds = %97
  %105 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %106 = call i64 @be16_to_cpu(i64 %105)
  br label %107

107:                                              ; preds = %104, %100
  %108 = phi i64 [ %103, %100 ], [ %106, %104 ]
  store i64 %108, i64* %16, align 8
  %109 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %110 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IB_MGMT_METHOD_TRAP, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %107
  %116 = load i64, i64* %16, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %120 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %119)
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %123 = call i32 @forward_trap(%struct.TYPE_19__* %120, i32 %121, %struct.ib_mad* %122)
  %124 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %125 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %8, align 4
  br label %356

127:                                              ; preds = %115, %107
  %128 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %129 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %141, label %134

134:                                              ; preds = %127
  %135 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %136 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %174

141:                                              ; preds = %134, %127
  %142 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %143 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %141
  %149 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %150 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %157 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %163, i32* %8, align 4
  br label %356

164:                                              ; preds = %155, %148, %141
  %165 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %166 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @IB_SMP_ATTR_SM_INFO, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %172, i32* %8, align 4
  br label %356

173:                                              ; preds = %164
  br label %222

174:                                              ; preds = %134
  %175 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %176 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %202, label %181

181:                                              ; preds = %174
  %182 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %183 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @MLX4_IB_VENDOR_CLASS1, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %202, label %188

188:                                              ; preds = %181
  %189 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %190 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @MLX4_IB_VENDOR_CLASS2, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %202, label %195

195:                                              ; preds = %188
  %196 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %197 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @IB_MGMT_CLASS_CONG_MGMT, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %219

202:                                              ; preds = %195, %188, %181, %174
  %203 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %204 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %218

209:                                              ; preds = %202
  %210 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %211 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %217, i32* %8, align 4
  br label %356

218:                                              ; preds = %209, %202
  br label %221

219:                                              ; preds = %195
  %220 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  store i32 %220, i32* %8, align 4
  br label %356

221:                                              ; preds = %218
  br label %222

222:                                              ; preds = %221, %173
  %223 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %224 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %236, label %229

229:                                              ; preds = %222
  %230 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %231 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %258

236:                                              ; preds = %229, %222
  %237 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %238 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %258

243:                                              ; preds = %236
  %244 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %245 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @IB_SMP_ATTR_PORT_INFO, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %243
  %251 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %252 = load i32, i32* %11, align 4
  %253 = call i32 @ib_query_port(%struct.ib_device* %251, i32 %252, %struct.ib_port_attr* %19)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %19, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %17, align 8
  br label %258

258:                                              ; preds = %255, %250, %243, %236, %229
  %259 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %260 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %259)
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %258
  %266 = load i32, i32* @MLX4_MAD_IFC_IGNORE_MKEY, align 4
  br label %268

267:                                              ; preds = %258
  br label %268

268:                                              ; preds = %267, %265
  %269 = phi i32 [ %266, %265 ], [ 0, %267 ]
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* @IB_MAD_IGNORE_BKEY, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = load i32, i32* @MLX4_MAD_IFC_IGNORE_BKEY, align 4
  br label %277

276:                                              ; preds = %268
  br label %277

277:                                              ; preds = %276, %274
  %278 = phi i32 [ %275, %274 ], [ 0, %276 ]
  %279 = or i32 %269, %278
  %280 = load i32, i32* @MLX4_MAD_IFC_NET_VIEW, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* %11, align 4
  %283 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %284 = load %struct.ib_grh*, %struct.ib_grh** %13, align 8
  %285 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %286 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %287 = call i32 @mlx4_MAD_IFC(%struct.TYPE_19__* %260, i32 %281, i32 %282, %struct.ib_wc* %283, %struct.ib_grh* %284, %struct.ib_mad* %285, %struct.ib_mad* %286)
  store i32 %287, i32* %18, align 4
  %288 = load i32, i32* %18, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %277
  %291 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %291, i32* %8, align 4
  br label %356

292:                                              ; preds = %277
  %293 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %294 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %327, label %298

298:                                              ; preds = %292
  %299 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %300 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %299)
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %315, label %309

309:                                              ; preds = %298
  %310 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %311 = load i32, i32* %11, align 4
  %312 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %313 = load i64, i64* %17, align 8
  %314 = call i32 @smp_snoop(%struct.ib_device* %310, i32 %311, %struct.ib_mad* %312, i64 %313)
  br label %315

315:                                              ; preds = %309, %298
  %316 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %317 = call %struct.TYPE_19__* @to_mdev(%struct.ib_device* %316)
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %318, align 8
  %320 = call i32 @mlx4_is_slave(%struct.TYPE_20__* %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %315
  %323 = load %struct.ib_device*, %struct.ib_device** %9, align 8
  %324 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %325 = call i32 @node_desc_override(%struct.ib_device* %323, %struct.ib_mad* %324)
  br label %326

326:                                              ; preds = %322, %315
  br label %327

327:                                              ; preds = %326, %292
  %328 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %329 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %341

334:                                              ; preds = %327
  %335 = call i32 @cpu_to_be16(i32 32768)
  %336 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %337 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = or i32 %339, %335
  store i32 %340, i32* %338, align 8
  br label %341

341:                                              ; preds = %334, %327
  %342 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %343 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @IB_MGMT_METHOD_TRAP_REPRESS, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %352

348:                                              ; preds = %341
  %349 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %350 = load i32, i32* @IB_MAD_RESULT_CONSUMED, align 4
  %351 = or i32 %349, %350
  store i32 %351, i32* %8, align 4
  br label %356

352:                                              ; preds = %341
  %353 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %354 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %355 = or i32 %353, %354
  store i32 %355, i32* %8, align 4
  br label %356

356:                                              ; preds = %352, %348, %290, %219, %216, %171, %162, %118
  %357 = load i32, i32* %8, align 4
  ret i32 %357
}

declare dso_local i32 @pr_debug(i8*, i64, i32, ...) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @forward_trap(%struct.TYPE_19__*, i32, %struct.ib_mad*) #1

declare dso_local %struct.TYPE_19__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mlx4_MAD_IFC(%struct.TYPE_19__*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @smp_snoop(%struct.ib_device*, i32, %struct.ib_mad*, i64) #1

declare dso_local i32 @mlx4_is_slave(%struct.TYPE_20__*) #1

declare dso_local i32 @node_desc_override(%struct.ib_device*, %struct.ib_mad*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
