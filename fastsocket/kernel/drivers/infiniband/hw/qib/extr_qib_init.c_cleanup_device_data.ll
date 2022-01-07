; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_cleanup_device_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_cleanup_device_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, %struct.qib_ctxtdata**, i32, %struct.qib_ctxtdata**, %struct.page**, %struct.TYPE_4__*, i32*, i32*, i32, %struct.TYPE_3__* }
%struct.qib_ctxtdata = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.qib_ctxtdata**, %struct.qib_ctxtdata**, %struct.qib_ctxtdata**, %struct.qib_ctxtdata**, i32* }

@QIB_STATUS_CHIP_PRESENT = common dso_local global i32 0, align 4
@qib_wc_pat = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @cleanup_device_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_device_data(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_ctxtdata**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qib_ctxtdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %124, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %127

20:                                               ; preds = %14
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 12
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %20
  %31 = load i32, i32* @QIB_STATUS_CHIP_PRESENT, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 12
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %32
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %30, %20
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %45 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %44, i32 0, i32 12
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %53 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %52, i32 0, i32 12
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %58, align 8
  %60 = call i32 @kfree(%struct.qib_ctxtdata** %59)
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %62 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %61, i32 0, i32 12
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  store %struct.qib_ctxtdata** null, %struct.qib_ctxtdata*** %67, align 8
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %69 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %68, i32 0, i32 12
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %74, align 8
  %76 = call i32 @kfree(%struct.qib_ctxtdata** %75)
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %78 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %77, i32 0, i32 12
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  store %struct.qib_ctxtdata** null, %struct.qib_ctxtdata*** %83, align 8
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %85 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %84, i32 0, i32 12
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %90, align 8
  %92 = call i32 @kfree(%struct.qib_ctxtdata** %91)
  %93 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %94 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %93, i32 0, i32 12
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store %struct.qib_ctxtdata** null, %struct.qib_ctxtdata*** %99, align 8
  %100 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %101 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %100, i32 0, i32 12
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %106, align 8
  %108 = call i32 @kfree(%struct.qib_ctxtdata** %107)
  %109 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %110 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %109, i32 0, i32 12
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store %struct.qib_ctxtdata** null, %struct.qib_ctxtdata*** %115, align 8
  %116 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %117 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %116, i32 0, i32 12
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock(i32* %122)
  br label %124

124:                                              ; preds = %43
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %14

127:                                              ; preds = %14
  %128 = load i32, i32* @qib_wc_pat, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %132 = call i32 @qib_disable_wc(%struct.qib_devdata* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %135 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %134, i32 0, i32 10
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %154

138:                                              ; preds = %133
  %139 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %140 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %139, i32 0, i32 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* @PAGE_SIZE, align 4
  %144 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %145 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %144, i32 0, i32 10
  %146 = load i32*, i32** %145, align 8
  %147 = bitcast i32* %146 to i8*
  %148 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %149 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %148, i32 0, i32 11
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @dma_free_coherent(i32* %142, i32 %143, i8* %147, i32 %150)
  %152 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %153 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %152, i32 0, i32 10
  store i32* null, i32** %153, align 8
  br label %154

154:                                              ; preds = %138, %133
  %155 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %156 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %155, i32 0, i32 7
  %157 = load %struct.page**, %struct.page*** %156, align 8
  %158 = icmp ne %struct.page** %157, null
  br i1 %158, label %159, label %234

159:                                              ; preds = %154
  %160 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %161 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %160, i32 0, i32 7
  %162 = load %struct.page**, %struct.page*** %161, align 8
  store %struct.page** %162, %struct.page*** %7, align 8
  %163 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %164 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %163, i32 0, i32 9
  %165 = load i32*, i32** %164, align 8
  store i32* %165, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %223, %159
  %167 = load i32, i32* %3, align 4
  %168 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %169 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %226

172:                                              ; preds = %166
  %173 = load i32, i32* %3, align 4
  %174 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %175 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = mul nsw i32 %173, %176
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %180 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %178, %181
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %219, %172
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %222

188:                                              ; preds = %184
  %189 = load %struct.page**, %struct.page*** %7, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.page*, %struct.page** %189, i64 %191
  %193 = load %struct.page*, %struct.page** %192, align 8
  %194 = icmp ne %struct.page* %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %188
  br label %219

196:                                              ; preds = %188
  %197 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %198 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %197, i32 0, i32 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @PAGE_SIZE, align 4
  %206 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %207 = call i32 @pci_unmap_page(%struct.TYPE_4__* %199, i32 %204, i32 %205, i32 %206)
  %208 = load %struct.page**, %struct.page*** %7, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.page*, %struct.page** %208, i64 %210
  %212 = call i32 @qib_release_user_pages(%struct.page** %211, i32 1)
  %213 = load %struct.page**, %struct.page*** %7, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.page*, %struct.page** %213, i64 %215
  store %struct.page* null, %struct.page** %216, align 8
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %196, %195
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %9, align 4
  br label %184

222:                                              ; preds = %184
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %3, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %3, align 4
  br label %166

226:                                              ; preds = %166
  %227 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %228 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %227, i32 0, i32 7
  %229 = load %struct.page**, %struct.page*** %228, align 8
  store %struct.page** %229, %struct.page*** %7, align 8
  %230 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %231 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %230, i32 0, i32 7
  store %struct.page** null, %struct.page*** %231, align 8
  %232 = load %struct.page**, %struct.page*** %7, align 8
  %233 = call i32 @vfree(%struct.page** %232)
  br label %234

234:                                              ; preds = %226, %154
  %235 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %236 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %235, i32 0, i32 5
  %237 = load i64, i64* %6, align 8
  %238 = call i32 @spin_lock_irqsave(i32* %236, i64 %237)
  %239 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %240 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %239, i32 0, i32 6
  %241 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %240, align 8
  store %struct.qib_ctxtdata** %241, %struct.qib_ctxtdata*** %5, align 8
  %242 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %243 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %242, i32 0, i32 6
  store %struct.qib_ctxtdata** null, %struct.qib_ctxtdata*** %243, align 8
  %244 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %245 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %244, i32 0, i32 5
  %246 = load i64, i64* %6, align 8
  %247 = call i32 @spin_unlock_irqrestore(i32* %245, i64 %246)
  store i32 0, i32* %3, align 4
  br label %248

248:                                              ; preds = %272, %234
  %249 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %5, align 8
  %250 = icmp ne %struct.qib_ctxtdata** %249, null
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = load i32, i32* %3, align 4
  %253 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %254 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %252, %255
  br label %257

257:                                              ; preds = %251, %248
  %258 = phi i1 [ false, %248 ], [ %256, %251 ]
  br i1 %258, label %259, label %275

259:                                              ; preds = %257
  %260 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %5, align 8
  %261 = load i32, i32* %3, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %260, i64 %262
  %264 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %263, align 8
  store %struct.qib_ctxtdata* %264, %struct.qib_ctxtdata** %13, align 8
  %265 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %5, align 8
  %266 = load i32, i32* %3, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %265, i64 %267
  store %struct.qib_ctxtdata* null, %struct.qib_ctxtdata** %268, align 8
  %269 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %270 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %13, align 8
  %271 = call i32 @qib_free_ctxtdata(%struct.qib_devdata* %269, %struct.qib_ctxtdata* %270)
  br label %272

272:                                              ; preds = %259
  %273 = load i32, i32* %3, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %3, align 4
  br label %248

275:                                              ; preds = %257
  %276 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %5, align 8
  %277 = call i32 @kfree(%struct.qib_ctxtdata** %276)
  %278 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %279 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %278, i32 0, i32 4
  %280 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %279, align 8
  %281 = call i32 @kfree(%struct.qib_ctxtdata** %280)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kfree(%struct.qib_ctxtdata**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @qib_disable_wc(%struct.qib_devdata*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @qib_release_user_pages(%struct.page**, i32) #1

declare dso_local i32 @vfree(%struct.page**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_free_ctxtdata(%struct.qib_devdata*, %struct.qib_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
