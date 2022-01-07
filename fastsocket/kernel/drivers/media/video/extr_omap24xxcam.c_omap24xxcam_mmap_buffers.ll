; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_mmap_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_mmap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.omap24xxcam_fh* }
%struct.omap24xxcam_fh = type { %struct.videobuf_queue, %struct.omap24xxcam_device* }
%struct.videobuf_queue = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.omap24xxcam_device = type { i32, i64 }
%struct.vm_area_struct = type { i32, i32, i32, i32 }
%struct.videobuf_dmabuf = type { i32, i32* }

@EBUSY = common dso_local global i32 0, align 4
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @omap24xxcam_mmap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap24xxcam_mmap_buffers(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.omap24xxcam_fh*, align 8
  %7 = alloca %struct.omap24xxcam_device*, align 8
  %8 = alloca %struct.videobuf_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.videobuf_dmabuf*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %17, align 8
  store %struct.omap24xxcam_fh* %18, %struct.omap24xxcam_fh** %6, align 8
  %19 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %6, align 8
  %20 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %19, i32 0, i32 1
  %21 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %20, align 8
  store %struct.omap24xxcam_device* %21, %struct.omap24xxcam_device** %7, align 8
  %22 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %6, align 8
  %23 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %22, i32 0, i32 0
  store %struct.videobuf_queue* %23, %struct.videobuf_queue** %8, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %7, align 8
  %25 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %7, align 8
  %28 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %7, align 8
  %33 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %224

37:                                               ; preds = %2
  %38 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %7, align 8
  %39 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.videobuf_queue*, %struct.videobuf_queue** %8, align 8
  %42 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %89, %37
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %92

48:                                               ; preds = %44
  %49 = load %struct.videobuf_queue*, %struct.videobuf_queue** %8, align 8
  %50 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = icmp eq %struct.TYPE_2__* null, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %89

58:                                               ; preds = %48
  %59 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %60 = load %struct.videobuf_queue*, %struct.videobuf_queue** %8, align 8
  %61 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %59, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %89

71:                                               ; preds = %58
  %72 = load %struct.videobuf_queue*, %struct.videobuf_queue** %8, align 8
  %73 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %74, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PAGE_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = icmp eq i32 %80, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  br label %92

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88, %70, %57
  %90 = load i32, i32* %9, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %44

92:                                               ; preds = %87, %44
  store i32 0, i32* %11, align 4
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %146, %92
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %149

98:                                               ; preds = %94
  %99 = load %struct.videobuf_queue*, %struct.videobuf_queue** %8, align 8
  %100 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %101, i64 %103
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = icmp eq %struct.TYPE_2__* null, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %146

108:                                              ; preds = %98
  %109 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %110 = load %struct.videobuf_queue*, %struct.videobuf_queue** %8, align 8
  %111 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %112, i64 %114
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %109, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  br label %146

121:                                              ; preds = %108
  %122 = load %struct.videobuf_queue*, %struct.videobuf_queue** %8, align 8
  %123 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %124, i64 %126
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = zext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %137 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %140 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sub i32 %138, %141
  %143 = icmp eq i32 %135, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %121
  br label %149

145:                                              ; preds = %121
  br label %146

146:                                              ; preds = %145, %120, %107
  %147 = load i32, i32* %10, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %94

149:                                              ; preds = %144, %94
  store i32 0, i32* %11, align 4
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %215, %149
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ule i32 %152, %153
  br i1 %154, label %155, label %218

155:                                              ; preds = %151
  %156 = load %struct.videobuf_queue*, %struct.videobuf_queue** %8, align 8
  %157 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %158, i64 %160
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = call %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_2__* %162)
  store %struct.videobuf_dmabuf* %163, %struct.videobuf_dmabuf** %15, align 8
  store i32 0, i32* %13, align 4
  br label %164

164:                                              ; preds = %211, %155
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %15, align 8
  %167 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ult i32 %165, %168
  br i1 %169, label %170, label %214

170:                                              ; preds = %164
  %171 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %172 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %173 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %11, align 4
  %176 = add i32 %174, %175
  %177 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %15, align 8
  %178 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = call i32 @sg_page(i32* %182)
  %184 = call i32 @page_to_pfn(i32 %183)
  %185 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %15, align 8
  %186 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = call i64 @sg_dma_len(i32* %190)
  %192 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %193 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @remap_pfn_range(%struct.vm_area_struct* %171, i32 %176, i32 %184, i64 %191, i32 %194)
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %170
  br label %219

199:                                              ; preds = %170
  %200 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %15, align 8
  %201 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = call i64 @sg_dma_len(i32* %205)
  %207 = load i32, i32* %11, align 4
  %208 = zext i32 %207 to i64
  %209 = add nsw i64 %208, %206
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %11, align 4
  br label %211

211:                                              ; preds = %199
  %212 = load i32, i32* %13, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %164

214:                                              ; preds = %164
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %12, align 4
  %217 = add i32 %216, 1
  store i32 %217, i32* %12, align 4
  br label %151

218:                                              ; preds = %151
  br label %219

219:                                              ; preds = %218, %198
  %220 = load %struct.videobuf_queue*, %struct.videobuf_queue** %8, align 8
  %221 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %220, i32 0, i32 0
  %222 = call i32 @mutex_unlock(i32* %221)
  %223 = load i32, i32* %14, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %219, %31
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_2__*) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i32, i32, i64, i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @sg_page(i32*) #1

declare dso_local i64 @sg_dma_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
