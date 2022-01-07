; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_alloc_dma_rcv_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_alloc_dma_rcv_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ohci = type { i32 }
%struct.dma_rcv_ctx = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32**, i32*, i32*, i32**, i32*, i32*, %struct.ti_ohci* }

@alloc_dma_rcv_ctx.num_allocs = internal global i32 0, align 4
@alloc_dma_rcv_ctx.pool_name = internal global [20 x i8] zeroinitializer, align 16
@GFP_ATOMIC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to allocate %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DMA buffer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"DMA prg\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"split buffer\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ohci1394_rcv_prg\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"pci_pool_create failed for %s\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@OHCI1394_ContextControlSet = common dso_local global i64 0, align 8
@OHCI1394_ContextControlClear = common dso_local global i64 0, align 8
@OHCI1394_ContextCommandPtr = common dso_local global i64 0, align 8
@dma_rcv_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_ohci*, %struct.dma_rcv_ctx*, i32, i32, i32, i32, i32, i32)* @alloc_dma_rcv_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_dma_rcv_ctx(%struct.ti_ohci* %0, %struct.dma_rcv_ctx* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ti_ohci*, align 8
  %11 = alloca %struct.dma_rcv_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ti_ohci* %0, %struct.ti_ohci** %10, align 8
  store %struct.dma_rcv_ctx* %1, %struct.dma_rcv_ctx** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load %struct.ti_ohci*, %struct.ti_ohci** %10, align 8
  %21 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %22 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %21, i32 0, i32 16
  store %struct.ti_ohci* %20, %struct.ti_ohci** %22, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %25 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %28 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %31 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %34 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %37 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %39 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %38, i32 0, i32 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %41 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %43 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %45 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call i8* @kzalloc(i32 %49, i32 %50)
  %52 = bitcast i8* %51 to i32**
  %53 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %54 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %53, i32 0, i32 13
  store i32** %52, i32*** %54, align 8
  %55 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %56 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call i8* @kzalloc(i32 %60, i32 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %65 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %64, i32 0, i32 14
  store i32* %63, i32** %65, align 8
  %66 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %67 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %66, i32 0, i32 13
  %68 = load i32**, i32*** %67, align 8
  %69 = icmp eq i32** %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %8
  %71 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %72 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %71, i32 0, i32 14
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %70, %8
  %76 = load i32, i32* @KERN_ERR, align 4
  %77 = call i32 @PRINT(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %79 = call i32 @free_dma_rcv_ctx(%struct.dma_rcv_ctx* %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %294

82:                                               ; preds = %70
  %83 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %84 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 8
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* @GFP_ATOMIC, align 4
  %90 = call i8* @kzalloc(i32 %88, i32 %89)
  %91 = bitcast i8* %90 to i32**
  %92 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %93 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %92, i32 0, i32 10
  store i32** %91, i32*** %93, align 8
  %94 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %95 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* @GFP_ATOMIC, align 4
  %101 = call i8* @kzalloc(i32 %99, i32 %100)
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %104 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %103, i32 0, i32 11
  store i32* %102, i32** %104, align 8
  %105 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %106 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %105, i32 0, i32 10
  %107 = load i32**, i32*** %106, align 8
  %108 = icmp eq i32** %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %82
  %110 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %111 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %110, i32 0, i32 11
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %109, %82
  %115 = load i32, i32* @KERN_ERR, align 4
  %116 = call i32 @PRINT(i32 %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %117 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %118 = call i32 @free_dma_rcv_ctx(%struct.dma_rcv_ctx* %117)
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %9, align 4
  br label %294

121:                                              ; preds = %109
  %122 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %123 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @GFP_ATOMIC, align 4
  %126 = call i32* @kmalloc(i32 %124, i32 %125)
  %127 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %128 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %127, i32 0, i32 15
  store i32* %126, i32** %128, align 8
  %129 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %130 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %129, i32 0, i32 15
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %121
  %134 = load i32, i32* @KERN_ERR, align 4
  %135 = call i32 @PRINT(i32 %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %136 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %137 = call i32 @free_dma_rcv_ctx(%struct.dma_rcv_ctx* %136)
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %9, align 4
  br label %294

140:                                              ; preds = %121
  %141 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @alloc_dma_rcv_ctx.pool_name, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @alloc_dma_rcv_ctx.pool_name, i64 0, i64 0), i64 %143
  %145 = load i32, i32* @alloc_dma_rcv_ctx.num_allocs, align 4
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  %147 = load %struct.ti_ohci*, %struct.ti_ohci** %10, align 8
  %148 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32* @pci_pool_create(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @alloc_dma_rcv_ctx.pool_name, i64 0, i64 0), i32 %149, i32 4, i32 4, i32 0)
  %151 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %152 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %151, i32 0, i32 12
  store i32* %150, i32** %152, align 8
  %153 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %154 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %153, i32 0, i32 12
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %164

157:                                              ; preds = %140
  %158 = load i32, i32* @KERN_ERR, align 4
  %159 = call i32 @PRINT(i32 %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @alloc_dma_rcv_ctx.pool_name, i64 0, i64 0))
  %160 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %161 = call i32 @free_dma_rcv_ctx(%struct.dma_rcv_ctx* %160)
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %9, align 4
  br label %294

164:                                              ; preds = %140
  %165 = load i32, i32* @alloc_dma_rcv_ctx.num_allocs, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @alloc_dma_rcv_ctx.num_allocs, align 4
  store i32 0, i32* %18, align 4
  br label %167

167:                                              ; preds = %263, %164
  %168 = load i32, i32* %18, align 4
  %169 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %170 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %266

173:                                              ; preds = %167
  %174 = load %struct.ti_ohci*, %struct.ti_ohci** %10, align 8
  %175 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %178 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %181 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %180, i32 0, i32 14
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = call i32* @pci_alloc_consistent(i32 %176, i32 %179, i32* %185)
  %187 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %188 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %187, i32 0, i32 13
  %189 = load i32**, i32*** %188, align 8
  %190 = load i32, i32* %18, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  store i32* %186, i32** %192, align 8
  %193 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %194 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %193, i32 0, i32 13
  %195 = load i32**, i32*** %194, align 8
  %196 = load i32, i32* %18, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %213

201:                                              ; preds = %173
  %202 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %203 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %202, i32 0, i32 13
  %204 = load i32**, i32*** %203, align 8
  %205 = load i32, i32* %18, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %210 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @memset(i32* %208, i32 0, i32 %211)
  br label %220

213:                                              ; preds = %173
  %214 = load i32, i32* @KERN_ERR, align 4
  %215 = call i32 @PRINT(i32 %214, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %216 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %217 = call i32 @free_dma_rcv_ctx(%struct.dma_rcv_ctx* %216)
  %218 = load i32, i32* @ENOMEM, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %9, align 4
  br label %294

220:                                              ; preds = %201
  %221 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %222 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %221, i32 0, i32 12
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* @GFP_KERNEL, align 4
  %225 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %226 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %225, i32 0, i32 11
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %18, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = call i32* @pci_pool_alloc(i32* %223, i32 %224, i32* %230)
  %232 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %233 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %232, i32 0, i32 10
  %234 = load i32**, i32*** %233, align 8
  %235 = load i32, i32* %18, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32*, i32** %234, i64 %236
  store i32* %231, i32** %237, align 8
  %238 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %239 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %238, i32 0, i32 10
  %240 = load i32**, i32*** %239, align 8
  %241 = load i32, i32* %18, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %240, i64 %242
  %244 = load i32*, i32** %243, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %255

246:                                              ; preds = %220
  %247 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %248 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %247, i32 0, i32 10
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %18, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @memset(i32* %253, i32 0, i32 4)
  br label %262

255:                                              ; preds = %220
  %256 = load i32, i32* @KERN_ERR, align 4
  %257 = call i32 @PRINT(i32 %256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %258 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %259 = call i32 @free_dma_rcv_ctx(%struct.dma_rcv_ctx* %258)
  %260 = load i32, i32* @ENOMEM, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %9, align 4
  br label %294

262:                                              ; preds = %246
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %18, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %18, align 4
  br label %167

266:                                              ; preds = %167
  %267 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %268 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %267, i32 0, i32 9
  %269 = call i32 @spin_lock_init(i32* %268)
  %270 = load i32, i32* %17, align 4
  %271 = sext i32 %270 to i64
  %272 = load i64, i64* @OHCI1394_ContextControlSet, align 8
  %273 = add nsw i64 %271, %272
  %274 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %275 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %274, i32 0, i32 8
  store i64 %273, i64* %275, align 8
  %276 = load i32, i32* %17, align 4
  %277 = sext i32 %276 to i64
  %278 = load i64, i64* @OHCI1394_ContextControlClear, align 8
  %279 = add nsw i64 %277, %278
  %280 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %281 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %280, i32 0, i32 7
  store i64 %279, i64* %281, align 8
  %282 = load i32, i32* %17, align 4
  %283 = sext i32 %282 to i64
  %284 = load i64, i64* @OHCI1394_ContextCommandPtr, align 8
  %285 = add nsw i64 %283, %284
  %286 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %287 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %286, i32 0, i32 6
  store i64 %285, i64* %287, align 8
  %288 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %289 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %288, i32 0, i32 5
  %290 = load i32, i32* @dma_rcv_tasklet, align 4
  %291 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %11, align 8
  %292 = ptrtoint %struct.dma_rcv_ctx* %291 to i64
  %293 = call i32 @tasklet_init(i32* %289, i32 %290, i64 %292)
  store i32 0, i32* %9, align 4
  br label %294

294:                                              ; preds = %266, %255, %213, %157, %133, %114, %75
  %295 = load i32, i32* %9, align 4
  ret i32 %295
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @PRINT(i32, i8*, i8*) #1

declare dso_local i32 @free_dma_rcv_ctx(%struct.dma_rcv_ctx*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32* @pci_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @pci_pool_alloc(i32*, i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
