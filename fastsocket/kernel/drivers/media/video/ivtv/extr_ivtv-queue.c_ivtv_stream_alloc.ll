; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-queue.c_ivtv_stream_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-queue.c_ivtv_stream_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32, i64, i32, i32, i32, %struct.ivtv*, i32*, i8*, %struct.ivtv_buffer*, %struct.ivtv_buffer*, i64, i64 }
%struct.ivtv = type { i32 }
%struct.ivtv_buffer = type { i32*, i8*, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Allocate %s%s stream: %d x %d buffers (%dkB total)\0A\00", align 1
@PCI_DMA_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"DMA \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Could not allocate sg_pending for %s stream\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Could not allocate sg_processing for %s stream\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Could not allocate sg_dma for %s stream\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"Couldn't allocate buffers for %s stream\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_stream_alloc(%struct.ivtv_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv_stream*, align 8
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ivtv_buffer*, align 8
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %3, align 8
  %8 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %9 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %8, i32 0, i32 5
  %10 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  store %struct.ivtv* %10, %struct.ivtv** %4, align 8
  %11 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %12 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %233

22:                                               ; preds = %1
  %23 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %24 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCI_DMA_NONE, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %30 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %31 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %34 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %37 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %40 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %43 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  %46 = sdiv i32 %45, 1024
  %47 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %32, i32 %35, i32 %38, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = load i32, i32* @__GFP_NOWARN, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @kzalloc(i32 %48, i32 %51)
  %53 = bitcast i8* %52 to %struct.ivtv_buffer*
  %54 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %55 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %54, i32 0, i32 9
  store %struct.ivtv_buffer* %53, %struct.ivtv_buffer** %55, align 8
  %56 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %57 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %56, i32 0, i32 9
  %58 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %57, align 8
  %59 = icmp eq %struct.ivtv_buffer* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %22
  %61 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %62 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %233

67:                                               ; preds = %22
  %68 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %69 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %68, i32 0, i32 11
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = load i32, i32* @__GFP_NOWARN, align 4
  %73 = or i32 %71, %72
  %74 = call i8* @kzalloc(i32 %70, i32 %73)
  %75 = bitcast i8* %74 to %struct.ivtv_buffer*
  %76 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %77 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %76, i32 0, i32 8
  store %struct.ivtv_buffer* %75, %struct.ivtv_buffer** %77, align 8
  %78 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %79 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %78, i32 0, i32 8
  %80 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %79, align 8
  %81 = icmp eq %struct.ivtv_buffer* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %67
  %83 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %84 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %88 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %87, i32 0, i32 9
  %89 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %88, align 8
  %90 = call i32 @kfree(%struct.ivtv_buffer* %89)
  %91 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %92 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %91, i32 0, i32 9
  store %struct.ivtv_buffer* null, %struct.ivtv_buffer** %92, align 8
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %233

95:                                               ; preds = %67
  %96 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %97 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %96, i32 0, i32 10
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = load i32, i32* @__GFP_NOWARN, align 4
  %100 = or i32 %98, %99
  %101 = call i8* @kzalloc(i32 4, i32 %100)
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %104 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %103, i32 0, i32 6
  store i32* %102, i32** %104, align 8
  %105 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %106 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %105, i32 0, i32 6
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %128

109:                                              ; preds = %95
  %110 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %111 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %115 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %114, i32 0, i32 9
  %116 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %115, align 8
  %117 = call i32 @kfree(%struct.ivtv_buffer* %116)
  %118 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %119 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %118, i32 0, i32 9
  store %struct.ivtv_buffer* null, %struct.ivtv_buffer** %119, align 8
  %120 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %121 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %120, i32 0, i32 8
  %122 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %121, align 8
  %123 = call i32 @kfree(%struct.ivtv_buffer* %122)
  %124 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %125 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %124, i32 0, i32 8
  store %struct.ivtv_buffer* null, %struct.ivtv_buffer** %125, align 8
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %233

128:                                              ; preds = %95
  %129 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %130 = call i64 @ivtv_might_use_dma(%struct.ivtv_stream* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %128
  %133 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %134 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %137 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %136, i32 0, i32 6
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @PCI_DMA_TODEVICE, align 8
  %140 = call i8* @pci_map_single(i32 %135, i32* %138, i32 4, i64 %139)
  %141 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %142 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %141, i32 0, i32 7
  store i8* %140, i8** %142, align 8
  %143 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %144 = call i32 @ivtv_stream_sync_for_cpu(%struct.ivtv_stream* %143)
  br label %145

145:                                              ; preds = %132, %128
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %214, %145
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %149 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %217

152:                                              ; preds = %146
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = load i32, i32* @__GFP_NOWARN, align 4
  %155 = or i32 %153, %154
  %156 = call i8* @kzalloc(i32 24, i32 %155)
  %157 = bitcast i8* %156 to %struct.ivtv_buffer*
  store %struct.ivtv_buffer* %157, %struct.ivtv_buffer** %7, align 8
  %158 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %7, align 8
  %159 = icmp eq %struct.ivtv_buffer* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %217

161:                                              ; preds = %152
  %162 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %163 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 256
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = load i32, i32* @__GFP_NOWARN, align 4
  %168 = or i32 %166, %167
  %169 = call i32* @kmalloc(i32 %165, i32 %168)
  %170 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %7, align 8
  %171 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %170, i32 0, i32 0
  store i32* %169, i32** %171, align 8
  %172 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %7, align 8
  %173 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = icmp eq i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %161
  %177 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %7, align 8
  %178 = call i32 @kfree(%struct.ivtv_buffer* %177)
  br label %217

179:                                              ; preds = %161
  %180 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %7, align 8
  %181 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %180, i32 0, i32 2
  %182 = call i32 @INIT_LIST_HEAD(i32* %181)
  %183 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %184 = call i64 @ivtv_might_use_dma(%struct.ivtv_stream* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %208

186:                                              ; preds = %179
  %187 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %188 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %187, i32 0, i32 5
  %189 = load %struct.ivtv*, %struct.ivtv** %188, align 8
  %190 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %7, align 8
  %193 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %196 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 256
  %199 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %200 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i8* @pci_map_single(i32 %191, i32* %194, i32 %198, i64 %201)
  %203 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %7, align 8
  %204 = getelementptr inbounds %struct.ivtv_buffer, %struct.ivtv_buffer* %203, i32 0, i32 1
  store i8* %202, i8** %204, align 8
  %205 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %206 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %7, align 8
  %207 = call i32 @ivtv_buf_sync_for_cpu(%struct.ivtv_stream* %205, %struct.ivtv_buffer* %206)
  br label %208

208:                                              ; preds = %186, %179
  %209 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %210 = load %struct.ivtv_buffer*, %struct.ivtv_buffer** %7, align 8
  %211 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %212 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %211, i32 0, i32 4
  %213 = call i32 @ivtv_enqueue(%struct.ivtv_stream* %209, %struct.ivtv_buffer* %210, i32* %212)
  br label %214

214:                                              ; preds = %208
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %146

217:                                              ; preds = %176, %160, %146
  %218 = load i32, i32* %6, align 4
  %219 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %220 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp eq i32 %218, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  store i32 0, i32* %2, align 4
  br label %233

224:                                              ; preds = %217
  %225 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %226 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %227)
  %229 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %230 = call i32 @ivtv_stream_free(%struct.ivtv_stream* %229)
  %231 = load i32, i32* @ENOMEM, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %224, %223, %109, %82, %60, %21
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @IVTV_ERR(i8*, i32) #1

declare dso_local i32 @kfree(%struct.ivtv_buffer*) #1

declare dso_local i64 @ivtv_might_use_dma(%struct.ivtv_stream*) #1

declare dso_local i8* @pci_map_single(i32, i32*, i32, i64) #1

declare dso_local i32 @ivtv_stream_sync_for_cpu(%struct.ivtv_stream*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ivtv_buf_sync_for_cpu(%struct.ivtv_stream*, %struct.ivtv_buffer*) #1

declare dso_local i32 @ivtv_enqueue(%struct.ivtv_stream*, %struct.ivtv_buffer*, i32*) #1

declare dso_local i32 @ivtv_stream_free(%struct.ivtv_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
