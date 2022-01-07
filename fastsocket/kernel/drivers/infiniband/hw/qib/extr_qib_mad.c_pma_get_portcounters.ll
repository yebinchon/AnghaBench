; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portcounters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_pma_get_portcounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters = type { i64, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qib_ibport = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qib_pportdata = type { i32 }
%struct.qib_verbs_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i64)* @pma_get_portcounters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pma_get_portcounters(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i64 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_pma_portcounters*, align 8
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca %struct.qib_pportdata*, align 8
  %10 = alloca %struct.qib_verbs_counters, align 4
  %11 = alloca i64, align 8
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %13 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ib_pma_portcounters*
  store %struct.ib_pma_portcounters* %15, %struct.ib_pma_portcounters** %7, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %16, i64 %17)
  store %struct.qib_ibport* %18, %struct.qib_ibport** %8, align 8
  %19 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %20 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %19)
  store %struct.qib_pportdata* %20, %struct.qib_pportdata** %9, align 8
  %21 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %22 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %25 = call i32 @qib_get_counters(%struct.qib_pportdata* %24, %struct.qib_verbs_counters* %10)
  %26 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %27 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %26, i32 0, i32 13
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %28
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %35 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %34, i32 0, i32 12
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %36
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %43 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %42, i32 0, i32 11
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %44
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %51 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %50, i32 0, i32 10
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %52
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %59 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %63, %60
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %67 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %71, %68
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %75 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %76
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %83 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %87, %84
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  %90 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %91 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %95, %92
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %99 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %103, %100
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %107 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 10
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %111, %108
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  %114 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %115 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 11
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %119, %116
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  %122 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %123 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 12
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = sub nsw i64 %127, %124
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 4
  %130 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %131 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 12
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %132
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 4
  %138 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %139 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @memset(i64 %140, i32 0, i32 8)
  %142 = load i64, i64* %11, align 8
  %143 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %144 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %146 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %3
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* %6, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %150, %3
  %155 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %156 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %157 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %155
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %154, %150
  %162 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp ugt i64 %164, 65535
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = call i8* @cpu_to_be16(i32 65535)
  %168 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %169 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %168, i32 0, i32 12
  store i8* %167, i8** %169, align 8
  br label %176

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @cpu_to_be16(i32 %172)
  %174 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %175 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %174, i32 0, i32 12
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %170, %166
  %177 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = icmp ugt i64 %179, 255
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %183 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %182, i32 0, i32 1
  store i32 255, i32* %183, align 8
  br label %191

184:                                              ; preds = %176
  %185 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = trunc i64 %187 to i32
  %189 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %190 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %184, %181
  %192 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = icmp ugt i64 %194, 255
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %198 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %197, i32 0, i32 2
  store i32 255, i32* %198, align 4
  br label %206

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = trunc i64 %202 to i32
  %204 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %205 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %199, %196
  %207 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = icmp ugt i64 %209, 65535
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = call i8* @cpu_to_be16(i32 65535)
  %213 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %214 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %213, i32 0, i32 11
  store i8* %212, i8** %214, align 8
  br label %221

215:                                              ; preds = %206
  %216 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i8* @cpu_to_be16(i32 %217)
  %219 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %220 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %219, i32 0, i32 11
  store i8* %218, i8** %220, align 8
  br label %221

221:                                              ; preds = %215, %211
  %222 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = icmp ugt i64 %224, 65535
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = call i8* @cpu_to_be16(i32 65535)
  %228 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %229 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %228, i32 0, i32 10
  store i8* %227, i8** %229, align 8
  br label %236

230:                                              ; preds = %221
  %231 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = call i8* @cpu_to_be16(i32 %232)
  %234 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %235 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %234, i32 0, i32 10
  store i8* %233, i8** %235, align 8
  br label %236

236:                                              ; preds = %230, %226
  %237 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 5
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = icmp ugt i64 %239, 65535
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = call i8* @cpu_to_be16(i32 65535)
  %243 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %244 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %243, i32 0, i32 9
  store i8* %242, i8** %244, align 8
  br label %251

245:                                              ; preds = %236
  %246 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @cpu_to_be16(i32 %247)
  %249 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %250 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %249, i32 0, i32 9
  store i8* %248, i8** %250, align 8
  br label %251

251:                                              ; preds = %245, %241
  %252 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 10
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = icmp ugt i64 %254, 15
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 10
  store i32 15, i32* %257, align 4
  br label %258

258:                                              ; preds = %256, %251
  %259 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 11
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = icmp ugt i64 %261, 15
  br i1 %262, label %263, label %265

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 11
  store i32 15, i32* %264, align 4
  br label %265

265:                                              ; preds = %263, %258
  %266 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 10
  %267 = load i32, i32* %266, align 4
  %268 = shl i32 %267, 4
  %269 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 11
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %268, %270
  %272 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %273 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %272, i32 0, i32 3
  store i32 %271, i32* %273, align 8
  %274 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 12
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = icmp ugt i64 %276, 65535
  br i1 %277, label %278, label %282

278:                                              ; preds = %265
  %279 = call i8* @cpu_to_be16(i32 65535)
  %280 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %281 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %280, i32 0, i32 8
  store i8* %279, i8** %281, align 8
  br label %288

282:                                              ; preds = %265
  %283 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 12
  %284 = load i32, i32* %283, align 4
  %285 = call i8* @cpu_to_be16(i32 %284)
  %286 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %287 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %286, i32 0, i32 8
  store i8* %285, i8** %287, align 8
  br label %288

288:                                              ; preds = %282, %278
  %289 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = icmp ugt i64 %291, 4294967295
  br i1 %292, label %293, label %297

293:                                              ; preds = %288
  %294 = call i8* @cpu_to_be32(i32 -1)
  %295 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %296 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %295, i32 0, i32 7
  store i8* %294, i8** %296, align 8
  br label %303

297:                                              ; preds = %288
  %298 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  %300 = call i8* @cpu_to_be32(i32 %299)
  %301 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %302 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %301, i32 0, i32 7
  store i8* %300, i8** %302, align 8
  br label %303

303:                                              ; preds = %297, %293
  %304 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 7
  %305 = load i32, i32* %304, align 4
  %306 = sext i32 %305 to i64
  %307 = icmp ugt i64 %306, 4294967295
  br i1 %307, label %308, label %312

308:                                              ; preds = %303
  %309 = call i8* @cpu_to_be32(i32 -1)
  %310 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %311 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %310, i32 0, i32 6
  store i8* %309, i8** %311, align 8
  br label %318

312:                                              ; preds = %303
  %313 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 7
  %314 = load i32, i32* %313, align 4
  %315 = call i8* @cpu_to_be32(i32 %314)
  %316 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %317 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %316, i32 0, i32 6
  store i8* %315, i8** %317, align 8
  br label %318

318:                                              ; preds = %312, %308
  %319 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 8
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  %322 = icmp ugt i64 %321, 4294967295
  br i1 %322, label %323, label %327

323:                                              ; preds = %318
  %324 = call i8* @cpu_to_be32(i32 -1)
  %325 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %326 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %325, i32 0, i32 5
  store i8* %324, i8** %326, align 8
  br label %333

327:                                              ; preds = %318
  %328 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 8
  %329 = load i32, i32* %328, align 4
  %330 = call i8* @cpu_to_be32(i32 %329)
  %331 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %332 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %331, i32 0, i32 5
  store i8* %330, i8** %332, align 8
  br label %333

333:                                              ; preds = %327, %323
  %334 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 9
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = icmp ugt i64 %336, 4294967295
  br i1 %337, label %338, label %342

338:                                              ; preds = %333
  %339 = call i8* @cpu_to_be32(i32 -1)
  %340 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %341 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %340, i32 0, i32 4
  store i8* %339, i8** %341, align 8
  br label %348

342:                                              ; preds = %333
  %343 = getelementptr inbounds %struct.qib_verbs_counters, %struct.qib_verbs_counters* %10, i32 0, i32 9
  %344 = load i32, i32* %343, align 4
  %345 = call i8* @cpu_to_be32(i32 %344)
  %346 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %347 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %346, i32 0, i32 4
  store i8* %345, i8** %347, align 8
  br label %348

348:                                              ; preds = %342, %338
  %349 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %350 = bitcast %struct.ib_pma_mad* %349 to %struct.ib_smp*
  %351 = call i32 @reply(%struct.ib_smp* %350)
  ret i32 %351
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i64) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @qib_get_counters(%struct.qib_pportdata*, %struct.qib_verbs_counters*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
