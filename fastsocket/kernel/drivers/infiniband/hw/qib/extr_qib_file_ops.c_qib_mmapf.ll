; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_mmapf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_mmapf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i32, i32, i64, i64, i32* }
%struct.qib_ctxtdata = type { i32, i32, i32, i32, i32, i8*, i8*, i64, i32, i64, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i32, i32, i32, i32, i64 }

@VM_SHARED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"pioavail registers\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"rcvhdrq\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rcvhdrq tail\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"mmap Failure %d: off %llx len %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @qib_mmapf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_mmapf(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.qib_ctxtdata*, align 8
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  store i32 1, i32* %12, align 4
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = call %struct.qib_ctxtdata* @ctxt_fp(%struct.file* %14)
  store %struct.qib_ctxtdata* %15, %struct.qib_ctxtdata** %5, align 8
  %16 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %17 = icmp ne %struct.qib_ctxtdata* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VM_SHARED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %246

28:                                               ; preds = %18
  %29 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %30 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %29, i32 0, i32 10
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %30, align 8
  store %struct.qib_devdata* %31, %struct.qib_devdata** %6, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %11, align 4
  br label %246

42:                                               ; preds = %28
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %46 = load %struct.file*, %struct.file** %3, align 8
  %47 = call i32 @subctxt_fp(%struct.file* %46)
  %48 = call i32 @mmap_kvaddr(%struct.vm_area_struct* %43, i32 %44, %struct.qib_ctxtdata* %45, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %51
  br label %246

56:                                               ; preds = %42
  %57 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %58 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %61 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %64 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  %67 = add i32 %59, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %69 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %56
  %73 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %74 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %10, align 4
  %76 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %77 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  br label %135

79:                                               ; preds = %56
  %80 = load %struct.file*, %struct.file** %3, align 8
  %81 = call i32 @subctxt_fp(%struct.file* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %112, label %83

83:                                               ; preds = %79
  %84 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %85 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %88 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = udiv i32 %86, %89
  %91 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %92 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %95 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = urem i32 %93, %96
  %98 = add i32 %90, %97
  store i32 %98, i32* %10, align 4
  %99 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %100 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %103 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %106 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sub i32 %107, %108
  %110 = mul i32 %104, %109
  %111 = add i32 %101, %110
  store i32 %111, i32* %9, align 4
  br label %134

112:                                              ; preds = %79
  %113 = load %struct.file*, %struct.file** %3, align 8
  %114 = call i32 @subctxt_fp(%struct.file* %113)
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  %116 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %117 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %120 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = udiv i32 %118, %121
  store i32 %122, i32* %10, align 4
  %123 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %124 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %127 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = mul i32 %128, %129
  %131 = load i32, i32* %13, align 4
  %132 = mul i32 %130, %131
  %133 = add i32 %125, %132
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %112, %83
  br label %135

135:                                              ; preds = %134, %72
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %141 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @mmap_ureg(%struct.vm_area_struct* %140, %struct.qib_devdata* %141, i32 %142)
  store i32 %143, i32* %11, align 4
  br label %218

144:                                              ; preds = %135
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %150 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %151 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @mmap_piobufs(%struct.vm_area_struct* %149, %struct.qib_devdata* %150, %struct.qib_ctxtdata* %151, i32 %152, i32 %153)
  store i32 %154, i32* %11, align 4
  br label %217

155:                                              ; preds = %144
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %158 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %156, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %155
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %163 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %164 = load i32, i32* @PAGE_SIZE, align 4
  %165 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %166 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to i8*
  %169 = call i32 @qib_mmap_mem(%struct.vm_area_struct* %162, %struct.qib_ctxtdata* %163, i32 %164, i8* %168, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %169, i32* %11, align 4
  br label %216

170:                                              ; preds = %155
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %173 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %171, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %170
  %177 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %178 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %179 = call i32 @mmap_rcvegrbufs(%struct.vm_area_struct* %177, %struct.qib_ctxtdata* %178)
  store i32 %179, i32* %11, align 4
  br label %215

180:                                              ; preds = %170
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %183 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %182, i32 0, i32 9
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = icmp eq i32 %181, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %180
  %188 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %189 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %190 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %191 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %194 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %193, i32 0, i32 5
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @qib_mmap_mem(%struct.vm_area_struct* %188, %struct.qib_ctxtdata* %189, i32 %192, i8* %195, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %196, i32* %11, align 4
  br label %214

197:                                              ; preds = %180
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %200 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %199, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = icmp eq i32 %198, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %197
  %205 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %206 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %207 = load i32, i32* @PAGE_SIZE, align 4
  %208 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %209 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %208, i32 0, i32 6
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @qib_mmap_mem(%struct.vm_area_struct* %205, %struct.qib_ctxtdata* %206, i32 %207, i8* %210, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %211, i32* %11, align 4
  br label %213

212:                                              ; preds = %197
  store i32 0, i32* %12, align 4
  br label %213

213:                                              ; preds = %212, %204
  br label %214

214:                                              ; preds = %213, %187
  br label %215

215:                                              ; preds = %214, %176
  br label %216

216:                                              ; preds = %215, %161
  br label %217

217:                                              ; preds = %216, %148
  br label %218

218:                                              ; preds = %217, %139
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %11, align 4
  br label %224

224:                                              ; preds = %221, %218
  %225 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %226 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %225, i32 0, i32 4
  store i32* null, i32** %226, align 8
  %227 = load i32, i32* %11, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %245

229:                                              ; preds = %224
  %230 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %231 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sub nsw i32 0, %233
  %235 = load i32, i32* %7, align 4
  %236 = zext i32 %235 to i64
  %237 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %238 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %241 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = sub nsw i64 %239, %242
  %244 = call i32 @qib_devinfo(i32 %232, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %234, i64 %236, i64 %243)
  br label %245

245:                                              ; preds = %229, %224
  br label %246

246:                                              ; preds = %245, %55, %39, %25
  %247 = load i32, i32* %11, align 4
  ret i32 %247
}

declare dso_local %struct.qib_ctxtdata* @ctxt_fp(%struct.file*) #1

declare dso_local i32 @mmap_kvaddr(%struct.vm_area_struct*, i32, %struct.qib_ctxtdata*, i32) #1

declare dso_local i32 @subctxt_fp(%struct.file*) #1

declare dso_local i32 @mmap_ureg(%struct.vm_area_struct*, %struct.qib_devdata*, i32) #1

declare dso_local i32 @mmap_piobufs(%struct.vm_area_struct*, %struct.qib_devdata*, %struct.qib_ctxtdata*, i32, i32) #1

declare dso_local i32 @qib_mmap_mem(%struct.vm_area_struct*, %struct.qib_ctxtdata*, i32, i8*, i32, i8*) #1

declare dso_local i32 @mmap_rcvegrbufs(%struct.vm_area_struct*, %struct.qib_ctxtdata*) #1

declare dso_local i32 @qib_devinfo(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
