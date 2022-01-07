; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_vbi.c_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.file* }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }
%struct.videobuf_buffer = type { i32 }
%struct.saa7146_buf = type { i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i64, i32, i32, i64, i32, i32, i32 }
%struct.videobuf_dmabuf = type { i32, i32 }

@vbi_pixel_to_capture = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vb:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"size mismatch.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@VIDEOBUF_PREPARED = common dso_local global i64 0, align 8
@buffer_activate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"error out.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)* @buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_prepare(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.videobuf_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.saa7146_fh*, align 8
  %10 = alloca %struct.saa7146_dev*, align 8
  %11 = alloca %struct.saa7146_buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.videobuf_dmabuf*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %18 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %17, i32 0, i32 0
  %19 = load %struct.file*, %struct.file** %18, align 8
  store %struct.file* %19, %struct.file** %8, align 8
  %20 = load %struct.file*, %struct.file** %8, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.saa7146_fh*, %struct.saa7146_fh** %21, align 8
  store %struct.saa7146_fh* %22, %struct.saa7146_fh** %9, align 8
  %23 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  %24 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %23, i32 0, i32 0
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %24, align 8
  store %struct.saa7146_dev* %25, %struct.saa7146_dev** %10, align 8
  %26 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %27 = bitcast %struct.videobuf_buffer* %26 to %struct.saa7146_buf*
  store %struct.saa7146_buf* %27, %struct.saa7146_buf** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 32, i32* %13, align 4
  %28 = load i32, i32* @vbi_pixel_to_capture, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %15, align 4
  %32 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %33 = bitcast %struct.videobuf_buffer* %32 to i8*
  %34 = call i32 @DEB_VBI(i8* %33)
  %35 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %36 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 0, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %3
  %41 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %42 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = call i32 @DEB_VBI(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %148

51:                                               ; preds = %40, %3
  %52 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %53 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %60 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %61 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %62 = call i32 @saa7146_dma_free(%struct.saa7146_dev* %59, %struct.videobuf_queue* %60, %struct.saa7146_buf* %61)
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %65 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %66 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %64, %68
  br i1 %69, label %70, label %133

70:                                               ; preds = %63
  %71 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %72 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %71, i32 0, i32 1
  %73 = call %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_3__* %72)
  store %struct.videobuf_dmabuf* %73, %struct.videobuf_dmabuf** %16, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %76 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %80 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %84 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %88 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 6
  store i32 %86, i32* %89, align 8
  %90 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %91 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %94 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = call i32 @saa7146_pgtable_free(i32 %92, i32* %96)
  %98 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %99 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %102 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = call i32 @saa7146_pgtable_alloc(i32 %100, i32* %104)
  %106 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %107 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %108 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %107, i32 0, i32 1
  %109 = call i32 @videobuf_iolock(%struct.videobuf_queue* %106, %struct.TYPE_3__* %108, i32* null)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %70
  br label %141

113:                                              ; preds = %70
  %114 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %115 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %118 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %16, align 8
  %122 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %16, align 8
  %125 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @saa7146_pgtable_build_single(i32 %116, i32* %120, i32 %123, i32 %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 0, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %113
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %4, align 4
  br label %148

132:                                              ; preds = %113
  br label %133

133:                                              ; preds = %132, %63
  %134 = load i64, i64* @VIDEOBUF_PREPARED, align 8
  %135 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %136 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  store i64 %134, i64* %137, align 8
  %138 = load i32, i32* @buffer_activate, align 4
  %139 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %140 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  store i32 0, i32* %4, align 4
  br label %148

141:                                              ; preds = %112
  %142 = call i32 @DEB_VBI(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %143 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %144 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %145 = load %struct.saa7146_buf*, %struct.saa7146_buf** %11, align 8
  %146 = call i32 @saa7146_dma_free(%struct.saa7146_dev* %143, %struct.videobuf_queue* %144, %struct.saa7146_buf* %145)
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %141, %133, %130, %47
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @DEB_VBI(i8*) #1

declare dso_local i32 @saa7146_dma_free(%struct.saa7146_dev*, %struct.videobuf_queue*, %struct.saa7146_buf*) #1

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_3__*) #1

declare dso_local i32 @saa7146_pgtable_free(i32, i32*) #1

declare dso_local i32 @saa7146_pgtable_alloc(i32, i32*) #1

declare dso_local i32 @videobuf_iolock(%struct.videobuf_queue*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @saa7146_pgtable_build_single(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
