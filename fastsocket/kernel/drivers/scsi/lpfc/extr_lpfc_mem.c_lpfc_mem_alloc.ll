; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.lpfc_dma_pool }
%struct.lpfc_dma_pool = type { %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@SLI4_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"lpfc_scsi_dma_buf_pool\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"lpfc_mbuf_pool\00", align 1
@LPFC_BPL_SIZE = common dso_local global i32 0, align 4
@LPFC_MBUF_POOL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_MEM_POOL_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"lpfc_hrb_pool\00", align 1
@LPFC_HDR_BUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"lpfc_drb_pool\00", align 1
@LPFC_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"lpfc_hbq_pool\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_mem_alloc(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_dma_pool*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 11
  store %struct.lpfc_dma_pool* %9, %struct.lpfc_dma_pool** %6, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LPFC_SLI_REV4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SLI4_PAGE_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  br label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @SLI4_PAGE_SIZE, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @pci_pool_create(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %34, i32 0)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  br label %51

39:                                               ; preds = %2
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i8* @pci_pool_create(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %46, i32 0)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %39, %27
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %303

57:                                               ; preds = %51
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i8* @pci_pool_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i32 0)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 3
  store i32* %64, i32** %66, align 8
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %57
  br label %296

72:                                               ; preds = %57
  %73 = load i32, i32* @LPFC_MBUF_POOL_SIZE, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.TYPE_3__* @kmalloc(i32 %76, i32 %77)
  %79 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %80 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %79, i32 0, i32 0
  store %struct.TYPE_3__* %78, %struct.TYPE_3__** %80, align 8
  %81 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %82 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = icmp ne %struct.TYPE_3__* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %72
  br label %289

86:                                               ; preds = %72
  %87 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %88 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %90 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %134, %86
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @LPFC_MBUF_POOL_SIZE, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %137

95:                                               ; preds = %91
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %101 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = call i32 @pci_pool_alloc(i32* %98, i32 %99, i32* %106)
  %108 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %109 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i32 %107, i32* %114, align 4
  %115 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %116 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %95
  br label %258

125:                                              ; preds = %95
  %126 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %127 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %131 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %91

137:                                              ; preds = %91
  %138 = load i32, i32* @LPFC_MEM_POOL_SIZE, align 4
  %139 = call i8* @mempool_create_kmalloc_pool(i32 %138, i32 4)
  %140 = bitcast i8* %139 to i32*
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %142 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %141, i32 0, i32 4
  store i32* %140, i32** %142, align 8
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %137
  br label %258

148:                                              ; preds = %137
  %149 = load i32, i32* @LPFC_MEM_POOL_SIZE, align 4
  %150 = call i8* @mempool_create_kmalloc_pool(i32 %149, i32 4)
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 5
  store i32* %151, i32** %153, align 8
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %155 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %154, i32 0, i32 5
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %148
  br label %251

159:                                              ; preds = %148
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %161 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @LPFC_SLI_REV4, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %209

165:                                              ; preds = %159
  %166 = load i32, i32* @LPFC_MEM_POOL_SIZE, align 4
  %167 = call i8* @mempool_create_kmalloc_pool(i32 %166, i32 4)
  %168 = bitcast i8* %167 to i32*
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 6
  store i32* %168, i32** %170, align 8
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %172 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %165
  br label %244

176:                                              ; preds = %165
  %177 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %178 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %177, i32 0, i32 10
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @LPFC_HDR_BUF_SIZE, align 4
  %181 = load i32, i32* %5, align 4
  %182 = call i8* @pci_pool_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %179, i32 %180, i32 %181, i32 0)
  %183 = bitcast i8* %182 to i32*
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %185 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %184, i32 0, i32 7
  store i32* %183, i32** %185, align 8
  %186 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %187 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %186, i32 0, i32 7
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %176
  br label %237

191:                                              ; preds = %176
  %192 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %193 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %192, i32 0, i32 10
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @LPFC_DATA_BUF_SIZE, align 4
  %196 = load i32, i32* %5, align 4
  %197 = call i8* @pci_pool_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %194, i32 %195, i32 %196, i32 0)
  %198 = bitcast i8* %197 to i32*
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %200 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %199, i32 0, i32 8
  store i32* %198, i32** %200, align 8
  %201 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %202 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %201, i32 0, i32 8
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %191
  br label %230

206:                                              ; preds = %191
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %208 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %207, i32 0, i32 9
  store i32* null, i32** %208, align 8
  br label %229

209:                                              ; preds = %159
  %210 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %211 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %210, i32 0, i32 10
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %214 = load i32, i32* %5, align 4
  %215 = call i8* @pci_pool_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %212, i32 %213, i32 %214, i32 0)
  %216 = bitcast i8* %215 to i32*
  %217 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %218 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %217, i32 0, i32 9
  store i32* %216, i32** %218, align 8
  %219 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %220 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %219, i32 0, i32 9
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %209
  br label %244

224:                                              ; preds = %209
  %225 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %226 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %225, i32 0, i32 7
  store i32* null, i32** %226, align 8
  %227 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %228 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %227, i32 0, i32 8
  store i32* null, i32** %228, align 8
  br label %229

229:                                              ; preds = %224, %206
  store i32 0, i32* %3, align 4
  br label %306

230:                                              ; preds = %205
  %231 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %232 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %231, i32 0, i32 7
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @pci_pool_destroy(i32* %233)
  %235 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %236 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %235, i32 0, i32 7
  store i32* null, i32** %236, align 8
  br label %237

237:                                              ; preds = %230, %190
  %238 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %239 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %238, i32 0, i32 6
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @mempool_destroy(i32* %240)
  %242 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %243 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %242, i32 0, i32 6
  store i32* null, i32** %243, align 8
  br label %244

244:                                              ; preds = %237, %223, %175
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %246 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %245, i32 0, i32 5
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @mempool_destroy(i32* %247)
  %249 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %250 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %249, i32 0, i32 5
  store i32* null, i32** %250, align 8
  br label %251

251:                                              ; preds = %244, %158
  %252 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %253 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %252, i32 0, i32 4
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @mempool_destroy(i32* %254)
  %256 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %257 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %256, i32 0, i32 4
  store i32* null, i32** %257, align 8
  br label %258

258:                                              ; preds = %251, %147, %124
  br label %259

259:                                              ; preds = %263, %258
  %260 = load i32, i32* %7, align 4
  %261 = add nsw i32 %260, -1
  store i32 %261, i32* %7, align 4
  %262 = icmp ne i32 %260, 0
  br i1 %262, label %263, label %284

263:                                              ; preds = %259
  %264 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %265 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %268 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %267, i32 0, i32 0
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %276 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %275, i32 0, i32 0
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %276, align 8
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @pci_pool_free(i32* %266, i32 %274, i32 %282)
  br label %259

284:                                              ; preds = %259
  %285 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %286 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %285, i32 0, i32 0
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %286, align 8
  %288 = call i32 @kfree(%struct.TYPE_3__* %287)
  br label %289

289:                                              ; preds = %284, %85
  %290 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %291 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %290, i32 0, i32 3
  %292 = load i32*, i32** %291, align 8
  %293 = call i32 @pci_pool_destroy(i32* %292)
  %294 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %295 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %294, i32 0, i32 3
  store i32* null, i32** %295, align 8
  br label %296

296:                                              ; preds = %289, %71
  %297 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %298 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %297, i32 0, i32 2
  %299 = load i32*, i32** %298, align 8
  %300 = call i32 @pci_pool_destroy(i32* %299)
  %301 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %302 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %301, i32 0, i32 2
  store i32* null, i32** %302, align 8
  br label %303

303:                                              ; preds = %296, %56
  %304 = load i32, i32* @ENOMEM, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %3, align 4
  br label %306

306:                                              ; preds = %303, %229
  %307 = load i32, i32* %3, align 4
  ret i32 %307
}

declare dso_local i8* @pci_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @kmalloc(i32, i32) #1

declare dso_local i32 @pci_pool_alloc(i32*, i32, i32*) #1

declare dso_local i8* @mempool_create_kmalloc_pool(i32, i32) #1

declare dso_local i32 @pci_pool_destroy(i32*) #1

declare dso_local i32 @mempool_destroy(i32*) #1

declare dso_local i32 @pci_pool_free(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
