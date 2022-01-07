; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i32* }
%struct.ipath_portdata = type { i32, i32, i32, i32, i32, i8*, i8*, i64, i32, i64, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"pgaddr %llx vm_start=%lx len %lx port %u:%u:%u\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"pioavail registers\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rcvhdrq\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rcvhdrq tail\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failure %d on off %llx len %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @ipath_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.ipath_portdata*, align 8
  %6 = alloca %struct.ipath_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = call %struct.ipath_portdata* @port_fp(%struct.file* %13)
  store %struct.ipath_portdata* %14, %struct.ipath_portdata** %5, align 8
  %15 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %16 = icmp ne %struct.ipath_portdata* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  br label %257

20:                                               ; preds = %2
  %21 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %22 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %21, i32 0, i32 10
  %23 = load %struct.ipath_devdata*, %struct.ipath_devdata** %22, align 8
  store %struct.ipath_devdata* %23, %struct.ipath_devdata** %6, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = shl i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %257

34:                                               ; preds = %20
  %35 = load i32, i32* @MM, align 4
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %49 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %52 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.file*, %struct.file** %3, align 8
  %55 = call i32 @subport_fp(%struct.file* %54)
  %56 = call i32 @ipath_cdbg(i32 %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %40, i64 %47, i32 %50, i32 %53, i32 %55)
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %60 = load %struct.file*, %struct.file** %3, align 8
  %61 = call i32 @subport_fp(%struct.file* %60)
  %62 = call i32 @mmap_kvaddr(%struct.vm_area_struct* %57, i32 %58, %struct.ipath_portdata* %59, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %34
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %257

70:                                               ; preds = %34
  %71 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %72 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %75 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %78 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %76, %79
  %81 = add i32 %73, %80
  store i32 %81, i32* %8, align 4
  %82 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %83 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %70
  %87 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %88 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %10, align 4
  %90 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %91 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  br label %149

93:                                               ; preds = %70
  %94 = load %struct.file*, %struct.file** %3, align 8
  %95 = call i32 @subport_fp(%struct.file* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %126, label %97

97:                                               ; preds = %93
  %98 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %99 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %102 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = udiv i32 %100, %103
  %105 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %106 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %109 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = urem i32 %107, %110
  %112 = add i32 %104, %111
  store i32 %112, i32* %10, align 4
  %113 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %114 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %117 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %120 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sub i32 %121, %122
  %124 = mul i32 %118, %123
  %125 = add i32 %115, %124
  store i32 %125, i32* %9, align 4
  br label %148

126:                                              ; preds = %93
  %127 = load %struct.file*, %struct.file** %3, align 8
  %128 = call i32 @subport_fp(%struct.file* %127)
  %129 = sub nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  %130 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %131 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %134 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = udiv i32 %132, %135
  store i32 %136, i32* %10, align 4
  %137 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %138 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %141 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = mul i32 %142, %143
  %145 = load i32, i32* %12, align 4
  %146 = mul i32 %144, %145
  %147 = add i32 %139, %146
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %126, %97
  br label %149

149:                                              ; preds = %148, %86
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %155 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @mmap_ureg(%struct.vm_area_struct* %154, %struct.ipath_devdata* %155, i32 %156)
  store i32 %157, i32* %11, align 4
  br label %234

158:                                              ; preds = %149
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %164 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %165 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @mmap_piobufs(%struct.vm_area_struct* %163, %struct.ipath_devdata* %164, %struct.ipath_portdata* %165, i32 %166, i32 %167)
  store i32 %168, i32* %11, align 4
  br label %233

169:                                              ; preds = %158
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %172 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %170, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %169
  %176 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %177 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %178 = load i32, i32* @PAGE_SIZE, align 4
  %179 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %180 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to i8*
  %183 = call i32 @ipath_mmap_mem(%struct.vm_area_struct* %176, %struct.ipath_portdata* %177, i32 %178, i32 0, i8* %182, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %183, i32* %11, align 4
  br label %232

184:                                              ; preds = %169
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %187 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %185, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %192 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %193 = call i32 @mmap_rcvegrbufs(%struct.vm_area_struct* %191, %struct.ipath_portdata* %192)
  store i32 %193, i32* %11, align 4
  br label %231

194:                                              ; preds = %184
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %197 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %196, i32 0, i32 9
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = icmp eq i32 %195, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %194
  %202 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %203 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %204 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %205 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %208 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %207, i32 0, i32 5
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @ipath_mmap_mem(%struct.vm_area_struct* %202, %struct.ipath_portdata* %203, i32 %206, i32 1, i8* %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %210, i32* %11, align 4
  br label %230

211:                                              ; preds = %194
  %212 = load i32, i32* %7, align 4
  %213 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %214 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %213, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = trunc i64 %215 to i32
  %217 = icmp eq i32 %212, %216
  br i1 %217, label %218, label %226

218:                                              ; preds = %211
  %219 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %220 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %221 = load i32, i32* @PAGE_SIZE, align 4
  %222 = load %struct.ipath_portdata*, %struct.ipath_portdata** %5, align 8
  %223 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %222, i32 0, i32 6
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @ipath_mmap_mem(%struct.vm_area_struct* %219, %struct.ipath_portdata* %220, i32 %221, i32 0, i8* %224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %225, i32* %11, align 4
  br label %229

226:                                              ; preds = %211
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %11, align 4
  br label %229

229:                                              ; preds = %226, %218
  br label %230

230:                                              ; preds = %229, %201
  br label %231

231:                                              ; preds = %230, %190
  br label %232

232:                                              ; preds = %231, %175
  br label %233

233:                                              ; preds = %232, %162
  br label %234

234:                                              ; preds = %233, %153
  %235 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %236 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %235, i32 0, i32 3
  store i32* null, i32** %236, align 8
  %237 = load i32, i32* %11, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %256

239:                                              ; preds = %234
  %240 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %241 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %240, i32 0, i32 4
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32, i32* %11, align 4
  %245 = sub nsw i32 0, %244
  %246 = load i32, i32* %7, align 4
  %247 = zext i32 %246 to i64
  %248 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %249 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %252 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = sub nsw i64 %250, %253
  %255 = call i32 @dev_info(i32* %243, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %245, i64 %247, i64 %254)
  br label %256

256:                                              ; preds = %239, %234
  br label %257

257:                                              ; preds = %256, %69, %31, %17
  %258 = load i32, i32* %11, align 4
  ret i32 %258
}

declare dso_local %struct.ipath_portdata* @port_fp(%struct.file*) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @subport_fp(%struct.file*) #1

declare dso_local i32 @mmap_kvaddr(%struct.vm_area_struct*, i32, %struct.ipath_portdata*, i32) #1

declare dso_local i32 @mmap_ureg(%struct.vm_area_struct*, %struct.ipath_devdata*, i32) #1

declare dso_local i32 @mmap_piobufs(%struct.vm_area_struct*, %struct.ipath_devdata*, %struct.ipath_portdata*, i32, i32) #1

declare dso_local i32 @ipath_mmap_mem(%struct.vm_area_struct*, %struct.ipath_portdata*, i32, i32, i8*, i8*) #1

declare dso_local i32 @mmap_rcvegrbufs(%struct.vm_area_struct*, %struct.ipath_portdata*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
