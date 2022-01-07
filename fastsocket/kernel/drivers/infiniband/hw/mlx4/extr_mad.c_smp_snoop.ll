; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_smp_snoop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_smp_snoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.ib_port_info = type { i32, i32, i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*** }
%struct.ib_smp = type { i32*, i32 }

@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_EVENT_PKEY_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"PKEY[%d] = x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"PKEY Change event: port=%d, block=0x%x, change_bitmap=0x%x\0A\00", align 1
@IB_EVENT_GID_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i32, %struct.ib_mad*, i8*)* @smp_snoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_snoop(%struct.ib_device* %0, i32 %1, %struct.ib_mad* %2, i8* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_mad*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ib_port_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx4_ib_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_mad* %2, %struct.ib_mad** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %16)
  store %struct.mlx4_ib_dev* %17, %struct.mlx4_ib_dev** %15, align 8
  %18 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %19 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %26 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %247

31:                                               ; preds = %24, %4
  %32 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %33 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %247

38:                                               ; preds = %31
  %39 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %40 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %245 [
    i32 128, label %43
    i32 129, label %82
    i32 130, label %199
  ]

43:                                               ; preds = %38
  %44 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %45 = bitcast %struct.ib_mad* %44 to %struct.ib_smp*
  %46 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = bitcast i32* %47 to %struct.ib_port_info*
  store %struct.ib_port_info* %48, %struct.ib_port_info** %9, align 8
  %49 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %50 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @be16_to_cpu(i32 %51)
  store i8* %52, i8** %10, align 8
  %53 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %56 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @be16_to_cpu(i32 %57)
  %59 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %60 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 15
  %63 = call i32 @update_sm_ah(%struct.mlx4_ib_dev* %53, i32 %54, i8* %58, i32 %62)
  %64 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %65 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %43
  %70 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @handle_client_rereg_event(%struct.mlx4_ib_dev* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %43
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @handle_lid_change_event(%struct.mlx4_ib_dev* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %73
  br label %246

82:                                               ; preds = %38
  %83 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mlx4_is_mfunc(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @IB_EVENT_PKEY_CHANGE, align 4
  %92 = call i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev* %89, i32 %90, i32 %91)
  br label %246

93:                                               ; preds = %82
  %94 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %95 = bitcast %struct.ib_mad* %94 to %struct.ib_smp*
  %96 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @be32_to_cpu(i32 %97)
  %99 = and i32 %98, 65535
  store i32 %99, i32* %12, align 4
  %100 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %101 = bitcast %struct.ib_mad* %100 to %struct.ib_smp*
  %102 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32* %104, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %105

105:                                              ; preds = %171, %93
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %106, 32
  br i1 %107, label %108, label %174

108:                                              ; preds = %105
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %12, align 4
  %111 = mul nsw i32 %110, 32
  %112 = add nsw i32 %109, %111
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @be16_to_cpu(i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %119)
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @be16_to_cpu(i32 %125)
  %127 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %128 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i8***, i8**** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8**, i8*** %130, i64 %133
  %135 = load i8**, i8*** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %12, align 4
  %138 = mul nsw i32 %137, 32
  %139 = add nsw i32 %136, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %135, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %126, %142
  br i1 %143, label %144, label %170

144:                                              ; preds = %108
  %145 = load i32, i32* %14, align 4
  %146 = shl i32 1, %145
  %147 = load i32, i32* %13, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %13, align 4
  %149 = load i32*, i32** %11, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @be16_to_cpu(i32 %153)
  %155 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %156 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i8***, i8**** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8**, i8*** %158, i64 %161
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %12, align 4
  %166 = mul nsw i32 %165, 32
  %167 = add nsw i32 %164, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %163, i64 %168
  store i8* %154, i8** %169, align 8
  br label %170

170:                                              ; preds = %144, %108
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %105

174:                                              ; preds = %105
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %13, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %174
  %182 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @IB_EVENT_PKEY_CHANGE, align 4
  %185 = call i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev* %182, i32 %183, i32 %184)
  %186 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %187 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %181
  %192 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @__propagate_pkey_ev(%struct.mlx4_ib_dev* %192, i32 %193, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %181
  br label %198

198:                                              ; preds = %197, %174
  br label %246

199:                                              ; preds = %38
  %200 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %201 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @mlx4_is_master(i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %199
  %206 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @IB_EVENT_GID_CHANGE, align 4
  %209 = call i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev* %206, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %205, %199
  %211 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %212 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @mlx4_is_master(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %244

216:                                              ; preds = %210
  %217 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %218 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %244, label %222

222:                                              ; preds = %216
  %223 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %224 = bitcast %struct.ib_mad* %223 to %struct.ib_smp*
  %225 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @be32_to_cpu(i32 %226)
  store i32 %227, i32* %12, align 4
  %228 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %6, align 4
  %231 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %232 = bitcast %struct.ib_mad* %231 to %struct.ib_smp*
  %233 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %232, i32 0, i32 0
  %234 = bitcast i32** %233 to i32*
  %235 = call i32 @mlx4_ib_update_cache_on_guid_change(%struct.mlx4_ib_dev* %228, i32 %229, i32 %230, i32* %234)
  %236 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %240 = bitcast %struct.ib_mad* %239 to %struct.ib_smp*
  %241 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %240, i32 0, i32 0
  %242 = bitcast i32** %241 to i32*
  %243 = call i32 @mlx4_ib_notify_slaves_on_guid_change(%struct.mlx4_ib_dev* %236, i32 %237, i32 %238, i32* %242)
  br label %244

244:                                              ; preds = %222, %216, %210
  br label %246

245:                                              ; preds = %38
  br label %246

246:                                              ; preds = %245, %244, %198, %88, %81
  br label %247

247:                                              ; preds = %246, %31, %24
  ret void
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @update_sm_ah(%struct.mlx4_ib_dev*, i32, i8*, i32) #1

declare dso_local i32 @handle_client_rereg_event(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @handle_lid_change_event(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @mlx4_is_mfunc(i32) #1

declare dso_local i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @__propagate_pkey_ev(%struct.mlx4_ib_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx4_is_master(i32) #1

declare dso_local i32 @mlx4_ib_update_cache_on_guid_change(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_ib_notify_slaves_on_guid_change(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
