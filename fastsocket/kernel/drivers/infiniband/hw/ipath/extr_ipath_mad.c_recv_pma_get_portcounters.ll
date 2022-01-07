; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_get_portcounters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_pma_get_portcounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pma_mad = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ib_device = type { i32 }
%struct.ib_pma_portcounters = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ipath_ibdev = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.ipath_verbs_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_smp = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pma_mad*, %struct.ib_device*, i32)* @recv_pma_get_portcounters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_pma_get_portcounters(%struct.ib_pma_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_pma_mad*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_pma_portcounters*, align 8
  %8 = alloca %struct.ipath_ibdev*, align 8
  %9 = alloca %struct.ipath_verbs_counters, align 4
  %10 = alloca i32, align 4
  store %struct.ib_pma_mad* %0, %struct.ib_pma_mad** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %12 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ib_pma_portcounters*
  store %struct.ib_pma_portcounters* %14, %struct.ib_pma_portcounters** %7, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %16 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %15)
  store %struct.ipath_ibdev* %16, %struct.ipath_ibdev** %8, align 8
  %17 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %18 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %21 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %20, i32 0, i32 15
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ipath_get_counters(i32 %22, %struct.ipath_verbs_counters* %9)
  %24 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %25 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %24, i32 0, i32 14
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %29, %26
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %33 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %32, i32 0, i32 13
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %34
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %41 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %40, i32 0, i32 12
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %42
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %49 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %48, i32 0, i32 11
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %50
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %57 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %56, i32 0, i32 10
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %58
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %65 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %64, i32 0, i32 9
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %66
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %73 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %74
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %81 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %82
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %89 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %93, %90
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  %96 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %97 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %101, %98
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  %104 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %105 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %109, %106
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %113 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 10
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 %117, %114
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 4
  %120 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %121 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 11
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = sub nsw i64 %125, %122
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 4
  %128 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %129 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 12
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 %133, %130
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 4
  %136 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %137 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 12
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %138
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 4
  %144 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %145 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @memset(i64 %146, i32 0, i32 8)
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %150 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %152 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %3
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 255
  br i1 %162, label %163, label %170

163:                                              ; preds = %160, %3
  %164 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %165 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %166 = getelementptr inbounds %struct.ib_pma_mad, %struct.ib_pma_mad* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %164
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %163, %160, %156
  %171 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = icmp ugt i64 %173, 65535
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = call i8* @cpu_to_be16(i32 65535)
  %177 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %178 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %177, i32 0, i32 12
  store i8* %176, i8** %178, align 8
  br label %185

179:                                              ; preds = %170
  %180 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @cpu_to_be16(i32 %181)
  %183 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %184 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %183, i32 0, i32 12
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %179, %175
  %186 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = icmp ugt i64 %188, 255
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %192 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %191, i32 0, i32 1
  store i32 255, i32* %192, align 4
  br label %198

193:                                              ; preds = %185
  %194 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %197 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %193, %190
  %199 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = icmp ugt i64 %201, 255
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %205 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %204, i32 0, i32 2
  store i32 255, i32* %205, align 8
  br label %211

206:                                              ; preds = %198
  %207 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %210 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %206, %203
  %212 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = icmp ugt i64 %214, 65535
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = call i8* @cpu_to_be16(i32 65535)
  %218 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %219 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %218, i32 0, i32 11
  store i8* %217, i8** %219, align 8
  br label %226

220:                                              ; preds = %211
  %221 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i8* @cpu_to_be16(i32 %222)
  %224 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %225 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %224, i32 0, i32 11
  store i8* %223, i8** %225, align 8
  br label %226

226:                                              ; preds = %220, %216
  %227 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = icmp ugt i64 %229, 65535
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = call i8* @cpu_to_be16(i32 65535)
  %233 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %234 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %233, i32 0, i32 10
  store i8* %232, i8** %234, align 8
  br label %241

235:                                              ; preds = %226
  %236 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @cpu_to_be16(i32 %237)
  %239 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %240 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %239, i32 0, i32 10
  store i8* %238, i8** %240, align 8
  br label %241

241:                                              ; preds = %235, %231
  %242 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = icmp ugt i64 %244, 65535
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = call i8* @cpu_to_be16(i32 65535)
  %248 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %249 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %248, i32 0, i32 9
  store i8* %247, i8** %249, align 8
  br label %256

250:                                              ; preds = %241
  %251 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 5
  %252 = load i32, i32* %251, align 4
  %253 = call i8* @cpu_to_be16(i32 %252)
  %254 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %255 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %254, i32 0, i32 9
  store i8* %253, i8** %255, align 8
  br label %256

256:                                              ; preds = %250, %246
  %257 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 10
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = icmp ugt i64 %259, 15
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 10
  store i32 15, i32* %262, align 4
  br label %263

263:                                              ; preds = %261, %256
  %264 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 11
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = icmp ugt i64 %266, 15
  br i1 %267, label %268, label %270

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 11
  store i32 15, i32* %269, align 4
  br label %270

270:                                              ; preds = %268, %263
  %271 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 10
  %272 = load i32, i32* %271, align 4
  %273 = shl i32 %272, 4
  %274 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 11
  %275 = load i32, i32* %274, align 4
  %276 = or i32 %273, %275
  %277 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %278 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %277, i32 0, i32 3
  store i32 %276, i32* %278, align 4
  %279 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 12
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = icmp ugt i64 %281, 65535
  br i1 %282, label %283, label %287

283:                                              ; preds = %270
  %284 = call i8* @cpu_to_be16(i32 65535)
  %285 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %286 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %285, i32 0, i32 8
  store i8* %284, i8** %286, align 8
  br label %293

287:                                              ; preds = %270
  %288 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 12
  %289 = load i32, i32* %288, align 4
  %290 = call i8* @cpu_to_be16(i32 %289)
  %291 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %292 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %291, i32 0, i32 8
  store i8* %290, i8** %292, align 8
  br label %293

293:                                              ; preds = %287, %283
  %294 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 6
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = icmp ugt i64 %296, 4294967295
  br i1 %297, label %298, label %302

298:                                              ; preds = %293
  %299 = call i8* @cpu_to_be32(i32 -1)
  %300 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %301 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %300, i32 0, i32 7
  store i8* %299, i8** %301, align 8
  br label %308

302:                                              ; preds = %293
  %303 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = call i8* @cpu_to_be32(i32 %304)
  %306 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %307 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %306, i32 0, i32 7
  store i8* %305, i8** %307, align 8
  br label %308

308:                                              ; preds = %302, %298
  %309 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 7
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = icmp ugt i64 %311, 4294967295
  br i1 %312, label %313, label %317

313:                                              ; preds = %308
  %314 = call i8* @cpu_to_be32(i32 -1)
  %315 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %316 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %315, i32 0, i32 6
  store i8* %314, i8** %316, align 8
  br label %323

317:                                              ; preds = %308
  %318 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = call i8* @cpu_to_be32(i32 %319)
  %321 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %322 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %321, i32 0, i32 6
  store i8* %320, i8** %322, align 8
  br label %323

323:                                              ; preds = %317, %313
  %324 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 8
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = icmp ugt i64 %326, 4294967295
  br i1 %327, label %328, label %332

328:                                              ; preds = %323
  %329 = call i8* @cpu_to_be32(i32 -1)
  %330 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %331 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %330, i32 0, i32 5
  store i8* %329, i8** %331, align 8
  br label %338

332:                                              ; preds = %323
  %333 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 8
  %334 = load i32, i32* %333, align 4
  %335 = call i8* @cpu_to_be32(i32 %334)
  %336 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %337 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %336, i32 0, i32 5
  store i8* %335, i8** %337, align 8
  br label %338

338:                                              ; preds = %332, %328
  %339 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 9
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = icmp ugt i64 %341, 4294967295
  br i1 %342, label %343, label %347

343:                                              ; preds = %338
  %344 = call i8* @cpu_to_be32(i32 -1)
  %345 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %346 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %345, i32 0, i32 4
  store i8* %344, i8** %346, align 8
  br label %353

347:                                              ; preds = %338
  %348 = getelementptr inbounds %struct.ipath_verbs_counters, %struct.ipath_verbs_counters* %9, i32 0, i32 9
  %349 = load i32, i32* %348, align 4
  %350 = call i8* @cpu_to_be32(i32 %349)
  %351 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %7, align 8
  %352 = getelementptr inbounds %struct.ib_pma_portcounters, %struct.ib_pma_portcounters* %351, i32 0, i32 4
  store i8* %350, i8** %352, align 8
  br label %353

353:                                              ; preds = %347, %343
  %354 = load %struct.ib_pma_mad*, %struct.ib_pma_mad** %4, align 8
  %355 = bitcast %struct.ib_pma_mad* %354 to %struct.ib_smp*
  %356 = call i32 @reply(%struct.ib_smp* %355)
  ret i32 %356
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @ipath_get_counters(i32, %struct.ipath_verbs_counters*) #1

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
