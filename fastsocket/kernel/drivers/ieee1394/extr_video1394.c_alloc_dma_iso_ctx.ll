; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_alloc_dma_iso_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_alloc_dma_iso_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_iso_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_9__*, %struct.it_dma_prg**, i64, i64, i64, %struct.dma_cmd**, i64, %struct.TYPE_8__, i32, i32, i32, %struct.ti_ohci* }
%struct.TYPE_9__ = type { i64 }
%struct.it_dma_prg = type { i32 }
%struct.dma_cmd = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ti_ohci = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate dma_iso_ctx\00", align 1
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate dma buffer\00", align 1
@OHCI_ISO_RECEIVE = common dso_local global i32 0, align 4
@wakeup_dma_ir_ctx = common dso_local global i32 0, align 4
@wakeup_dma_it_ctx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"no free iso %s contexts\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"receive\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"transmit\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to allocate ir prg regs\00", align 1
@OHCI1394_IsoRcvContextControlSet = common dso_local global i64 0, align 8
@OHCI1394_IsoRcvContextControlClear = common dso_local global i64 0, align 8
@OHCI1394_IsoRcvCommandPtr = common dso_local global i64 0, align 8
@OHCI1394_IsoRcvContextMatch = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to allocate dma ir prg\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@OHCI1394_IsoXmitContextControlSet = common dso_local global i64 0, align 8
@OHCI1394_IsoXmitContextControlClear = common dso_local global i64 0, align 8
@OHCI1394_IsoXmitCommandPtr = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to allocate dma it prg\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Packet size %d (page_size: %ld) not yet supported\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Failed to allocate dma_iso_ctx member\00", align 1
@.str.10 = private unnamed_addr constant [83 x i8] c"Iso %s DMA: %d buffers of size %d allocated for a frame size %d, each with %d prgs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_iso_ctx* (%struct.ti_ohci*, i32, i32, i32, i32, i32)* @alloc_dma_iso_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_iso_ctx* @alloc_dma_iso_ctx(%struct.ti_ohci* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dma_iso_ctx*, align 8
  %8 = alloca %struct.ti_ohci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dma_iso_ctx*, align 8
  %15 = alloca i32, align 4
  store %struct.ti_ohci* %0, %struct.ti_ohci** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 168, i32 %16)
  %18 = bitcast i8* %17 to %struct.dma_iso_ctx*
  store %struct.dma_iso_ctx* %18, %struct.dma_iso_ctx** %14, align 8
  %19 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %20 = icmp ne %struct.dma_iso_ctx* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @KERN_ERR, align 4
  %23 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %24 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %22, i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_iso_ctx* null, %struct.dma_iso_ctx** %7, align 8
  br label %606

29:                                               ; preds = %6
  %30 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %31 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %32 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %31, i32 0, i32 27
  store %struct.ti_ohci* %30, %struct.ti_ohci** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %35 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %38 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %41 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %44 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @PAGE_ALIGN(i32 %45)
  %47 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %48 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %50 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %49, i32 0, i32 5
  store i32 -1, i32* %50, align 4
  %51 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %52 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %51, i32 0, i32 26
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %55 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %54, i32 0, i32 25
  %56 = call i32 @init_waitqueue_head(i32* %55)
  %57 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %58 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %57, i32 0, i32 24
  %59 = call i32 @dma_region_init(i32* %58)
  %60 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %61 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %60, i32 0, i32 24
  %62 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %63 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %67 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %71 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %74 = call i64 @dma_region_alloc(i32* %61, i32 %69, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %29
  %77 = load i32, i32* @KERN_ERR, align 4
  %78 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %79 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %77, i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %85 = call i32 @free_dma_iso_ctx(%struct.dma_iso_ctx* %84)
  store %struct.dma_iso_ctx* null, %struct.dma_iso_ctx** %7, align 8
  br label %606

86:                                               ; preds = %29
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @OHCI_ISO_RECEIVE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %92 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %91, i32 0, i32 23
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @wakeup_dma_ir_ctx, align 4
  %95 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %96 = ptrtoint %struct.dma_iso_ctx* %95 to i64
  %97 = call i32 @ohci1394_init_iso_tasklet(%struct.TYPE_8__* %92, i32 %93, i32 %94, i64 %96)
  br label %106

98:                                               ; preds = %86
  %99 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %100 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %99, i32 0, i32 23
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @wakeup_dma_it_ctx, align 4
  %103 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %104 = ptrtoint %struct.dma_iso_ctx* %103 to i64
  %105 = call i32 @ohci1394_init_iso_tasklet(%struct.TYPE_8__* %100, i32 %101, i32 %102, i64 %104)
  br label %106

106:                                              ; preds = %98, %90
  %107 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %108 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %109 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %108, i32 0, i32 23
  %110 = call i64 @ohci1394_register_iso_tasklet(%struct.ti_ohci* %107, %struct.TYPE_8__* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %106
  %113 = load i32, i32* @KERN_ERR, align 4
  %114 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %115 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @OHCI_ISO_RECEIVE, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %124 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %113, i32 %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %123)
  %125 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %126 = call i32 @free_dma_iso_ctx(%struct.dma_iso_ctx* %125)
  store %struct.dma_iso_ctx* null, %struct.dma_iso_ctx** %7, align 8
  br label %606

127:                                              ; preds = %106
  %128 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %129 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %128, i32 0, i32 23
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %133 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 8
  %134 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %135 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 8
  %139 = trunc i64 %138 to i32
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call %struct.TYPE_9__* @kmalloc(i32 %139, i32 %140)
  %142 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %143 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %142, i32 0, i32 16
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %143, align 8
  %144 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %145 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %144, i32 0, i32 16
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = icmp ne %struct.TYPE_9__* %146, null
  br i1 %147, label %158, label %148

148:                                              ; preds = %127
  %149 = load i32, i32* @KERN_ERR, align 4
  %150 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %151 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %149, i32 %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %156 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %157 = call i32 @free_dma_iso_ctx(%struct.dma_iso_ctx* %156)
  store %struct.dma_iso_ctx* null, %struct.dma_iso_ctx** %7, align 8
  br label %606

158:                                              ; preds = %127
  store i32 0, i32* %15, align 4
  br label %159

159:                                              ; preds = %173, %158
  %160 = load i32, i32* %15, align 4
  %161 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %162 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %159
  %166 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %167 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %166, i32 0, i32 16
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 %170
  %172 = call i32 @dma_prog_region_init(%struct.TYPE_9__* %171)
  br label %173

173:                                              ; preds = %165
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %159

176:                                              ; preds = %159
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @OHCI_ISO_RECEIVE, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %323

180:                                              ; preds = %176
  %181 = load i64, i64* @OHCI1394_IsoRcvContextControlSet, align 8
  %182 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %183 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = mul nsw i32 32, %184
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %181, %186
  %188 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %189 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %188, i32 0, i32 20
  store i64 %187, i64* %189, align 8
  %190 = load i64, i64* @OHCI1394_IsoRcvContextControlClear, align 8
  %191 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %192 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 32, %193
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %190, %195
  %197 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %198 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %197, i32 0, i32 19
  store i64 %196, i64* %198, align 8
  %199 = load i64, i64* @OHCI1394_IsoRcvCommandPtr, align 8
  %200 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %201 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = mul nsw i32 32, %202
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %199, %204
  %206 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %207 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %206, i32 0, i32 18
  store i64 %205, i64* %207, align 8
  %208 = load i64, i64* @OHCI1394_IsoRcvContextMatch, align 8
  %209 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %210 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 32, %211
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %208, %213
  %215 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %216 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %215, i32 0, i32 22
  store i64 %214, i64* %216, align 8
  %217 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %218 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = mul i64 %220, 8
  %222 = trunc i64 %221 to i32
  %223 = load i32, i32* @GFP_KERNEL, align 4
  %224 = call i8* @kzalloc(i32 %222, i32 %223)
  %225 = bitcast i8* %224 to %struct.dma_cmd**
  %226 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %227 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %226, i32 0, i32 21
  store %struct.dma_cmd** %225, %struct.dma_cmd*** %227, align 8
  %228 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %229 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %228, i32 0, i32 21
  %230 = load %struct.dma_cmd**, %struct.dma_cmd*** %229, align 8
  %231 = icmp ne %struct.dma_cmd** %230, null
  br i1 %231, label %242, label %232

232:                                              ; preds = %180
  %233 = load i32, i32* @KERN_ERR, align 4
  %234 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %235 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %234, i32 0, i32 0
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %233, i32 %238, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %240 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %241 = call i32 @free_dma_iso_ctx(%struct.dma_iso_ctx* %240)
  store %struct.dma_iso_ctx* null, %struct.dma_iso_ctx** %7, align 8
  br label %606

242:                                              ; preds = %180
  %243 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %244 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @PAGE_SIZE, align 4
  %247 = sdiv i32 %245, %246
  %248 = add nsw i32 %247, 1
  %249 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %250 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %249, i32 0, i32 7
  store i32 %248, i32* %250, align 4
  %251 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %252 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @PAGE_SIZE, align 4
  %255 = srem i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %242
  %258 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %259 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @PAGE_SIZE, align 4
  %262 = srem i32 %260, %261
  br label %265

263:                                              ; preds = %242
  %264 = load i32, i32* @PAGE_SIZE, align 4
  br label %265

265:                                              ; preds = %263, %257
  %266 = phi i32 [ %262, %257 ], [ %264, %263 ]
  %267 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %268 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %267, i32 0, i32 8
  store i32 %266, i32* %268, align 8
  store i32 0, i32* %15, align 4
  br label %269

269:                                              ; preds = %319, %265
  %270 = load i32, i32* %15, align 4
  %271 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %272 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = icmp slt i32 %270, %273
  br i1 %274, label %275, label %322

275:                                              ; preds = %269
  %276 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %277 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %276, i32 0, i32 16
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %277, align 8
  %279 = load i32, i32* %15, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i64 %280
  %282 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %283 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = mul i64 %285, 4
  %287 = trunc i64 %286 to i32
  %288 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %289 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = call i64 @dma_prog_region_alloc(%struct.TYPE_9__* %281, i32 %287, i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %275
  %294 = load i32, i32* @KERN_ERR, align 4
  %295 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %296 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %295, i32 0, i32 0
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %294, i32 %299, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %301 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %302 = call i32 @free_dma_iso_ctx(%struct.dma_iso_ctx* %301)
  store %struct.dma_iso_ctx* null, %struct.dma_iso_ctx** %7, align 8
  br label %606

303:                                              ; preds = %275
  %304 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %305 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %304, i32 0, i32 16
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %305, align 8
  %307 = load i32, i32* %15, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = inttoptr i64 %311 to %struct.dma_cmd*
  %313 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %314 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %313, i32 0, i32 21
  %315 = load %struct.dma_cmd**, %struct.dma_cmd*** %314, align 8
  %316 = load i32, i32* %15, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.dma_cmd*, %struct.dma_cmd** %315, i64 %317
  store %struct.dma_cmd* %312, %struct.dma_cmd** %318, align 8
  br label %319

319:                                              ; preds = %303
  %320 = load i32, i32* %15, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %15, align 4
  br label %269

322:                                              ; preds = %269
  br label %492

323:                                              ; preds = %176
  %324 = load i64, i64* @OHCI1394_IsoXmitContextControlSet, align 8
  %325 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %326 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 8
  %328 = mul nsw i32 16, %327
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %324, %329
  %331 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %332 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %331, i32 0, i32 20
  store i64 %330, i64* %332, align 8
  %333 = load i64, i64* @OHCI1394_IsoXmitContextControlClear, align 8
  %334 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %335 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %334, i32 0, i32 6
  %336 = load i32, i32* %335, align 8
  %337 = mul nsw i32 16, %336
  %338 = sext i32 %337 to i64
  %339 = add nsw i64 %333, %338
  %340 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %341 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %340, i32 0, i32 19
  store i64 %339, i64* %341, align 8
  %342 = load i64, i64* @OHCI1394_IsoXmitCommandPtr, align 8
  %343 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %344 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 8
  %346 = mul nsw i32 16, %345
  %347 = sext i32 %346 to i64
  %348 = add nsw i64 %342, %347
  %349 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %350 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %349, i32 0, i32 18
  store i64 %348, i64* %350, align 8
  %351 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %352 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = sext i32 %353 to i64
  %355 = mul i64 %354, 8
  %356 = trunc i64 %355 to i32
  %357 = load i32, i32* @GFP_KERNEL, align 4
  %358 = call i8* @kzalloc(i32 %356, i32 %357)
  %359 = bitcast i8* %358 to %struct.it_dma_prg**
  %360 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %361 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %360, i32 0, i32 17
  store %struct.it_dma_prg** %359, %struct.it_dma_prg*** %361, align 8
  %362 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %363 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %362, i32 0, i32 17
  %364 = load %struct.it_dma_prg**, %struct.it_dma_prg*** %363, align 8
  %365 = icmp ne %struct.it_dma_prg** %364, null
  br i1 %365, label %376, label %366

366:                                              ; preds = %323
  %367 = load i32, i32* @KERN_ERR, align 4
  %368 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %369 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %368, i32 0, i32 0
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %367, i32 %372, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %374 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %375 = call i32 @free_dma_iso_ctx(%struct.dma_iso_ctx* %374)
  store %struct.dma_iso_ctx* null, %struct.dma_iso_ctx** %7, align 8
  br label %606

376:                                              ; preds = %323
  %377 = load i32, i32* %13, align 4
  %378 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %379 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %378, i32 0, i32 9
  store i32 %377, i32* %379, align 4
  %380 = load i32, i32* @PAGE_SIZE, align 4
  %381 = load i32, i32* %13, align 4
  %382 = urem i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %387, label %384

384:                                              ; preds = %376
  %385 = load i32, i32* %13, align 4
  %386 = icmp ugt i32 %385, 4096
  br i1 %386, label %387, label %399

387:                                              ; preds = %384, %376
  %388 = load i32, i32* @KERN_ERR, align 4
  %389 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %390 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %389, i32 0, i32 0
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %13, align 4
  %395 = load i32, i32* @PAGE_SIZE, align 4
  %396 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %388, i32 %393, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %394, i32 %395)
  %397 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %398 = call i32 @free_dma_iso_ctx(%struct.dma_iso_ctx* %397)
  store %struct.dma_iso_ctx* null, %struct.dma_iso_ctx** %7, align 8
  br label %606

399:                                              ; preds = %384
  %400 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %401 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %404 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %403, i32 0, i32 9
  %405 = load i32, i32* %404, align 4
  %406 = udiv i32 %402, %405
  %407 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %408 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %407, i32 0, i32 7
  store i32 %406, i32* %408, align 4
  %409 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %410 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %413 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %412, i32 0, i32 9
  %414 = load i32, i32* %413, align 4
  %415 = urem i32 %411, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %431

417:                                              ; preds = %399
  %418 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %419 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %418, i32 0, i32 7
  %420 = load i32, i32* %419, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %419, align 4
  %422 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %423 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %426 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %425, i32 0, i32 9
  %427 = load i32, i32* %426, align 4
  %428 = urem i32 %424, %427
  %429 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %430 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %429, i32 0, i32 8
  store i32 %428, i32* %430, align 8
  br label %437

431:                                              ; preds = %399
  %432 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %433 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %432, i32 0, i32 9
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %436 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %435, i32 0, i32 8
  store i32 %434, i32* %436, align 8
  br label %437

437:                                              ; preds = %431, %417
  store i32 0, i32* %15, align 4
  br label %438

438:                                              ; preds = %488, %437
  %439 = load i32, i32* %15, align 4
  %440 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %441 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = icmp slt i32 %439, %442
  br i1 %443, label %444, label %491

444:                                              ; preds = %438
  %445 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %446 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %445, i32 0, i32 16
  %447 = load %struct.TYPE_9__*, %struct.TYPE_9__** %446, align 8
  %448 = load i32, i32* %15, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i64 %449
  %451 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %452 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %451, i32 0, i32 7
  %453 = load i32, i32* %452, align 4
  %454 = sext i32 %453 to i64
  %455 = mul i64 %454, 4
  %456 = trunc i64 %455 to i32
  %457 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %458 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 8
  %460 = call i64 @dma_prog_region_alloc(%struct.TYPE_9__* %450, i32 %456, i32 %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %472

462:                                              ; preds = %444
  %463 = load i32, i32* @KERN_ERR, align 4
  %464 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %465 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %464, i32 0, i32 0
  %466 = load %struct.TYPE_7__*, %struct.TYPE_7__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %463, i32 %468, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %470 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %471 = call i32 @free_dma_iso_ctx(%struct.dma_iso_ctx* %470)
  store %struct.dma_iso_ctx* null, %struct.dma_iso_ctx** %7, align 8
  br label %606

472:                                              ; preds = %444
  %473 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %474 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %473, i32 0, i32 16
  %475 = load %struct.TYPE_9__*, %struct.TYPE_9__** %474, align 8
  %476 = load i32, i32* %15, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = inttoptr i64 %480 to %struct.it_dma_prg*
  %482 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %483 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %482, i32 0, i32 17
  %484 = load %struct.it_dma_prg**, %struct.it_dma_prg*** %483, align 8
  %485 = load i32, i32* %15, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.it_dma_prg*, %struct.it_dma_prg** %484, i64 %486
  store %struct.it_dma_prg* %481, %struct.it_dma_prg** %487, align 8
  br label %488

488:                                              ; preds = %472
  %489 = load i32, i32* %15, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %15, align 4
  br label %438

491:                                              ; preds = %438
  br label %492

492:                                              ; preds = %491, %322
  %493 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %494 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 8
  %496 = sext i32 %495 to i64
  %497 = mul i64 %496, 1
  %498 = trunc i64 %497 to i32
  %499 = load i32, i32* @GFP_KERNEL, align 4
  %500 = call i8* @kzalloc(i32 %498, i32 %499)
  %501 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %502 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %501, i32 0, i32 15
  store i8* %500, i8** %502, align 8
  %503 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %504 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 8
  %506 = sext i32 %505 to i64
  %507 = mul i64 %506, 1
  %508 = trunc i64 %507 to i32
  %509 = load i32, i32* @GFP_KERNEL, align 4
  %510 = call i8* @kzalloc(i32 %508, i32 %509)
  %511 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %512 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %511, i32 0, i32 14
  store i8* %510, i8** %512, align 8
  %513 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %514 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %513, i32 0, i32 2
  %515 = load i32, i32* %514, align 8
  %516 = sext i32 %515 to i64
  %517 = mul i64 %516, 1
  %518 = trunc i64 %517 to i32
  %519 = load i32, i32* @GFP_KERNEL, align 4
  %520 = call i8* @kzalloc(i32 %518, i32 %519)
  %521 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %522 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %521, i32 0, i32 13
  store i8* %520, i8** %522, align 8
  %523 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %524 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %523, i32 0, i32 2
  %525 = load i32, i32* %524, align 8
  %526 = sext i32 %525 to i64
  %527 = mul i64 %526, 1
  %528 = trunc i64 %527 to i32
  %529 = load i32, i32* @GFP_KERNEL, align 4
  %530 = call i8* @kzalloc(i32 %528, i32 %529)
  %531 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %532 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %531, i32 0, i32 12
  store i8* %530, i8** %532, align 8
  %533 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %534 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 8
  %536 = sext i32 %535 to i64
  %537 = mul i64 %536, 1
  %538 = trunc i64 %537 to i32
  %539 = load i32, i32* @GFP_KERNEL, align 4
  %540 = call i8* @kzalloc(i32 %538, i32 %539)
  %541 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %542 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %541, i32 0, i32 11
  store i8* %540, i8** %542, align 8
  %543 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %544 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %543, i32 0, i32 15
  %545 = load i8*, i8** %544, align 8
  %546 = icmp ne i8* %545, null
  br i1 %546, label %547, label %567

547:                                              ; preds = %492
  %548 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %549 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %548, i32 0, i32 14
  %550 = load i8*, i8** %549, align 8
  %551 = icmp ne i8* %550, null
  br i1 %551, label %552, label %567

552:                                              ; preds = %547
  %553 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %554 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %553, i32 0, i32 13
  %555 = load i8*, i8** %554, align 8
  %556 = icmp ne i8* %555, null
  br i1 %556, label %557, label %567

557:                                              ; preds = %552
  %558 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %559 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %558, i32 0, i32 12
  %560 = load i8*, i8** %559, align 8
  %561 = icmp ne i8* %560, null
  br i1 %561, label %562, label %567

562:                                              ; preds = %557
  %563 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %564 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %563, i32 0, i32 11
  %565 = load i8*, i8** %564, align 8
  %566 = icmp ne i8* %565, null
  br i1 %566, label %577, label %567

567:                                              ; preds = %562, %557, %552, %547, %492
  %568 = load i32, i32* @KERN_ERR, align 4
  %569 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %570 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %569, i32 0, i32 0
  %571 = load %struct.TYPE_7__*, %struct.TYPE_7__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 4
  %574 = call i32 (i32, i32, i8*, ...) @PRINT(i32 %568, i32 %573, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %575 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %576 = call i32 @free_dma_iso_ctx(%struct.dma_iso_ctx* %575)
  store %struct.dma_iso_ctx* null, %struct.dma_iso_ctx** %7, align 8
  br label %606

577:                                              ; preds = %562
  %578 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %579 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %578, i32 0, i32 10
  %580 = call i32 @spin_lock_init(i32* %579)
  %581 = load %struct.ti_ohci*, %struct.ti_ohci** %8, align 8
  %582 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %581, i32 0, i32 0
  %583 = load %struct.TYPE_7__*, %struct.TYPE_7__** %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 4
  %586 = load i32, i32* %9, align 4
  %587 = load i32, i32* @OHCI_ISO_RECEIVE, align 4
  %588 = icmp eq i32 %586, %587
  %589 = zext i1 %588 to i64
  %590 = select i1 %588, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %591 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %592 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %591, i32 0, i32 2
  %593 = load i32, i32* %592, align 8
  %594 = sub nsw i32 %593, 1
  %595 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %596 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %595, i32 0, i32 4
  %597 = load i32, i32* %596, align 8
  %598 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %599 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %598, i32 0, i32 3
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  %602 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %601, i32 0, i32 7
  %603 = load i32, i32* %602, align 4
  %604 = call i32 @DBGMSG(i32 %585, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.10, i64 0, i64 0), i8* %590, i32 %594, i32 %597, i32 %600, i32 %603)
  %605 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %14, align 8
  store %struct.dma_iso_ctx* %605, %struct.dma_iso_ctx** %7, align 8
  br label %606

606:                                              ; preds = %577, %567, %462, %387, %366, %293, %232, %148, %112, %76, %21
  %607 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %7, align 8
  ret %struct.dma_iso_ctx* %607
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @PRINT(i32, i32, i8*, ...) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dma_region_init(i32*) #1

declare dso_local i64 @dma_region_alloc(i32*, i32, i32, i32) #1

declare dso_local i32 @free_dma_iso_ctx(%struct.dma_iso_ctx*) #1

declare dso_local i32 @ohci1394_init_iso_tasklet(%struct.TYPE_8__*, i32, i32, i64) #1

declare dso_local i64 @ohci1394_register_iso_tasklet(%struct.ti_ohci*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_prog_region_init(%struct.TYPE_9__*) #1

declare dso_local i64 @dma_prog_region_alloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @DBGMSG(i32, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
