; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_process_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_process_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_page = type { i64, i64, i32, %struct.bio*, %struct.mm_dma_desc* }
%struct.bio = type { i64, i64, %struct.bio*, i32, i32 }
%struct.mm_dma_desc = type { i32, i32, i32, i32 }
%struct.cardinfo = type { i32, i64, i32, i32, i32, i64, %struct.TYPE_3__*, %struct.mm_page* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DMASCR_DMA_COMPLETE = common dso_local global i32 0, align 4
@DMASCR_TRANSFER_READ = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DMASCR_HARD_ERROR = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"I/O error on sector %d/%d\0A\00", align 1
@BIO_RW = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"memory now initialised\0A\00", align 1
@MEMORY_INITIALIZED = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_LED_ON_TRANSFER = common dso_local global i32 0, align 4
@LED_REMOVE = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"do some more\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @process_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_page(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mm_page*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.cardinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.mm_dma_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.bio* null, %struct.bio** %4, align 8
  %13 = load i64, i64* %2, align 8
  %14 = inttoptr i64 %13 to %struct.cardinfo*
  store %struct.cardinfo* %14, %struct.cardinfo** %5, align 8
  %15 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %16 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %19 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %18, i32 0, i32 4
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %22 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %255

26:                                               ; preds = %1
  %27 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %28 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %27, i32 0, i32 7
  %29 = load %struct.mm_page*, %struct.mm_page** %28, align 8
  %30 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %31 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %29, i64 %32
  store %struct.mm_page* %33, %struct.mm_page** %3, align 8
  br label %34

34:                                               ; preds = %214, %26
  %35 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %36 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %39 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %215

42:                                               ; preds = %34
  %43 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %44 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %43, i32 0, i32 3
  %45 = load %struct.bio*, %struct.bio** %44, align 8
  store %struct.bio* %45, %struct.bio** %7, align 8
  %46 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %47 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %46, i32 0, i32 4
  %48 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %47, align 8
  %49 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %50 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %48, i64 %51
  store %struct.mm_dma_desc* %52, %struct.mm_dma_desc** %8, align 8
  %53 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %8, align 8
  %54 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  store i32 %56, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @DMASCR_DMA_COMPLETE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %42
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %61, %42
  %64 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %65 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %69 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %11, align 4
  %71 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %72 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %76 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load %struct.bio*, %struct.bio** %7, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %78, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %63
  %84 = load %struct.bio*, %struct.bio** %7, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 2
  %86 = load %struct.bio*, %struct.bio** %85, align 8
  %87 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %88 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %87, i32 0, i32 3
  store %struct.bio* %86, %struct.bio** %88, align 8
  %89 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %90 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %89, i32 0, i32 3
  %91 = load %struct.bio*, %struct.bio** %90, align 8
  %92 = icmp ne %struct.bio* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %83
  %94 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %95 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %94, i32 0, i32 3
  %96 = load %struct.bio*, %struct.bio** %95, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %101 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %93, %83
  br label %103

103:                                              ; preds = %102, %63
  %104 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %105 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %104, i32 0, i32 6
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %8, align 8
  %108 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.bio*, %struct.bio** %7, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call %struct.TYPE_4__* @bio_iovec_idx(%struct.bio* %110, i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @DMASCR_TRANSFER_READ, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %103
  %120 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %123

121:                                              ; preds = %103
  %122 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = call i32 @pci_unmap_page(%struct.TYPE_3__* %106, i32 %109, i32 %114, i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @DMASCR_HARD_ERROR, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %123
  %131 = load i32, i32* @BIO_UPTODATE, align 4
  %132 = load %struct.bio*, %struct.bio** %7, align 8
  %133 = getelementptr inbounds %struct.bio, %struct.bio* %132, i32 0, i32 4
  %134 = call i32 @clear_bit(i32 %131, i32* %133)
  %135 = load i32, i32* @KERN_WARNING, align 4
  %136 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %137 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %136, i32 0, i32 6
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %8, align 8
  %141 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le32_to_cpu(i32 %142)
  %144 = ashr i32 %143, 9
  %145 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %8, align 8
  %146 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %135, i32* %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %148)
  %150 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @dump_dmastat(%struct.cardinfo* %150, i32 %151)
  br label %199

153:                                              ; preds = %123
  %154 = load i32, i32* @BIO_RW, align 4
  %155 = load %struct.bio*, %struct.bio** %7, align 8
  %156 = getelementptr inbounds %struct.bio, %struct.bio* %155, i32 0, i32 3
  %157 = call i64 @test_bit(i32 %154, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %198

159:                                              ; preds = %153
  %160 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %8, align 8
  %161 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @le32_to_cpu(i32 %162)
  %164 = ashr i32 %163, 9
  %165 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %166 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %164, %167
  br i1 %168, label %169, label %198

169:                                              ; preds = %159
  %170 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %8, align 8
  %171 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le32_to_cpu(i32 %172)
  %174 = ashr i32 %173, 9
  %175 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %176 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %180 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = ashr i32 %181, 1
  %183 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %184 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp sge i32 %182, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %169
  %188 = load i32, i32* @KERN_INFO, align 4
  %189 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %190 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %189, i32 0, i32 6
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %188, i32* %192, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %194 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %195 = load i32, i32* @MEMORY_INITIALIZED, align 4
  %196 = call i32 @set_userbit(%struct.cardinfo* %194, i32 %195, i32 1)
  br label %197

197:                                              ; preds = %187, %169
  br label %198

198:                                              ; preds = %197, %159, %153
  br label %199

199:                                              ; preds = %198, %130
  %200 = load %struct.bio*, %struct.bio** %7, align 8
  %201 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %202 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %201, i32 0, i32 3
  %203 = load %struct.bio*, %struct.bio** %202, align 8
  %204 = icmp ne %struct.bio* %200, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %199
  %206 = load %struct.bio*, %struct.bio** %4, align 8
  %207 = load %struct.bio*, %struct.bio** %7, align 8
  %208 = getelementptr inbounds %struct.bio, %struct.bio* %207, i32 0, i32 2
  store %struct.bio* %206, %struct.bio** %208, align 8
  %209 = load %struct.bio*, %struct.bio** %7, align 8
  store %struct.bio* %209, %struct.bio** %4, align 8
  br label %210

210:                                              ; preds = %205, %199
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  br label %215

214:                                              ; preds = %210
  br label %34

215:                                              ; preds = %213, %34
  %216 = load i32, i32* @debug, align 4
  %217 = load i32, i32* @DEBUG_LED_ON_TRANSFER, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %222 = load i32, i32* @LED_REMOVE, align 4
  %223 = load i32, i32* @LED_OFF, align 4
  %224 = call i32 @set_led(%struct.cardinfo* %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %220, %215
  %226 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %227 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %232 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %231, i32 0, i32 5
  store i64 0, i64* %232, align 8
  %233 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %234 = call i32 @check_batteries(%struct.cardinfo* %233)
  br label %235

235:                                              ; preds = %230, %225
  %236 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %237 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %240 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp uge i64 %238, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %235
  %244 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %245 = call i32 @reset_page(%struct.mm_page* %244)
  %246 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %247 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %246, i32 0, i32 1
  store i64 -1, i64* %247, align 8
  %248 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %249 = call i32 @activate(%struct.cardinfo* %248)
  br label %254

250:                                              ; preds = %235
  %251 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %252 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %253 = call i32 @mm_start_io(%struct.cardinfo* %252)
  br label %254

254:                                              ; preds = %250, %243
  br label %255

255:                                              ; preds = %254, %25
  %256 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %257 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %256, i32 0, i32 4
  %258 = call i32 @spin_unlock_bh(i32* %257)
  br label %259

259:                                              ; preds = %262, %255
  %260 = load %struct.bio*, %struct.bio** %4, align 8
  %261 = icmp ne %struct.bio* %260, null
  br i1 %261, label %262, label %271

262:                                              ; preds = %259
  %263 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %263, %struct.bio** %12, align 8
  %264 = load %struct.bio*, %struct.bio** %12, align 8
  %265 = getelementptr inbounds %struct.bio, %struct.bio* %264, i32 0, i32 2
  %266 = load %struct.bio*, %struct.bio** %265, align 8
  store %struct.bio* %266, %struct.bio** %4, align 8
  %267 = load %struct.bio*, %struct.bio** %12, align 8
  %268 = getelementptr inbounds %struct.bio, %struct.bio* %267, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %268, align 8
  %269 = load %struct.bio*, %struct.bio** %12, align 8
  %270 = call i32 @bio_endio(%struct.bio* %269, i32 0)
  br label %259

271:                                              ; preds = %259
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pci_unmap_page(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @bio_iovec_idx(%struct.bio*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, ...) #1

declare dso_local i32 @dump_dmastat(%struct.cardinfo*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_userbit(%struct.cardinfo*, i32, i32) #1

declare dso_local i32 @set_led(%struct.cardinfo*, i32, i32) #1

declare dso_local i32 @check_batteries(%struct.cardinfo*) #1

declare dso_local i32 @reset_page(%struct.mm_page*) #1

declare dso_local i32 @activate(%struct.cardinfo*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mm_start_io(%struct.cardinfo*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
