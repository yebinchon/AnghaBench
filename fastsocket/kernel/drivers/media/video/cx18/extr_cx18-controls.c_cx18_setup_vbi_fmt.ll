; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-controls.c_cx18_setup_vbi_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-controls.c_cx18_setup_vbi_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32** }
%struct.TYPE_5__ = type { i32 }

@V4L2_CAP_SLICED_VBI_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_VBI_FMT_IVTV = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_PS = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_DVD = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_VBI_FMT_NONE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"disabled insertion of sliced VBI data into the MPEG stream\0A\00", align 1
@CX18_VBI_FRAMES = common dso_local global i32 0, align 4
@CX18_SLICED_MPEG_DATA_BUFSZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Unable to allocate buffers for sliced VBI data insertion\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [82 x i8] c"enabled insertion of sliced VBI data into the MPEG PS,when sliced VBI is enabled\0A\00", align 1
@V4L2_SLICED_CAPTION_525 = common dso_local global i32 0, align 4
@V4L2_SLICED_WSS_625 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, i32, i32)* @cx18_setup_vbi_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_setup_vbi_fmt(%struct.cx18* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cx18*, %struct.cx18** %5, align 8
  %10 = getelementptr inbounds %struct.cx18, %struct.cx18* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @V4L2_CAP_SLICED_VBI_CAPTURE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %159

18:                                               ; preds = %3
  %19 = load %struct.cx18*, %struct.cx18** %5, align 8
  %20 = getelementptr inbounds %struct.cx18, %struct.cx18* %19, i32 0, i32 4
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %159

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @V4L2_MPEG_STREAM_VBI_FMT_IVTV, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_PS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %49, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_DVD, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %38, %26
  %43 = load i8*, i8** @V4L2_MPEG_STREAM_VBI_FMT_NONE, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.cx18*, %struct.cx18** %5, align 8
  %46 = getelementptr inbounds %struct.cx18, %struct.cx18* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %159

49:                                               ; preds = %38, %34, %30
  %50 = load %struct.cx18*, %struct.cx18** %5, align 8
  %51 = getelementptr inbounds %struct.cx18, %struct.cx18* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %118

57:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %114, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @CX18_VBI_FRAMES, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %117

62:                                               ; preds = %58
  %63 = load i32, i32* @CX18_SLICED_MPEG_DATA_BUFSZ, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32* @kmalloc(i32 %63, i32 %64)
  %66 = load %struct.cx18*, %struct.cx18** %5, align 8
  %67 = getelementptr inbounds %struct.cx18, %struct.cx18* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  store i32* %65, i32** %72, align 8
  %73 = load %struct.cx18*, %struct.cx18** %5, align 8
  %74 = getelementptr inbounds %struct.cx18, %struct.cx18* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %113

82:                                               ; preds = %62
  br label %83

83:                                               ; preds = %87, %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %8, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = load %struct.cx18*, %struct.cx18** %5, align 8
  %89 = getelementptr inbounds %struct.cx18, %struct.cx18* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @kfree(i32* %95)
  %97 = load %struct.cx18*, %struct.cx18** %5, align 8
  %98 = getelementptr inbounds %struct.cx18, %struct.cx18* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  store i32* null, i32** %103, align 8
  br label %83

104:                                              ; preds = %83
  %105 = load i8*, i8** @V4L2_MPEG_STREAM_VBI_FMT_NONE, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.cx18*, %struct.cx18** %5, align 8
  %108 = getelementptr inbounds %struct.cx18, %struct.cx18* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = call i32 @CX18_WARN(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %159

113:                                              ; preds = %62
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %58

117:                                              ; preds = %58
  br label %118

118:                                              ; preds = %117, %49
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.cx18*, %struct.cx18** %5, align 8
  %121 = getelementptr inbounds %struct.cx18, %struct.cx18* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  %124 = load %struct.cx18*, %struct.cx18** %5, align 8
  %125 = getelementptr inbounds %struct.cx18, %struct.cx18* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = call i64 @cx18_get_service_set(%struct.TYPE_5__* %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %158

130:                                              ; preds = %118
  %131 = load %struct.cx18*, %struct.cx18** %5, align 8
  %132 = getelementptr inbounds %struct.cx18, %struct.cx18* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  %137 = load %struct.cx18*, %struct.cx18** %5, align 8
  %138 = getelementptr inbounds %struct.cx18, %struct.cx18* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32 %136, i32* %141, align 4
  br label %149

142:                                              ; preds = %130
  %143 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  %144 = load %struct.cx18*, %struct.cx18** %5, align 8
  %145 = getelementptr inbounds %struct.cx18, %struct.cx18* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  store i32 %143, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %135
  %150 = load %struct.cx18*, %struct.cx18** %5, align 8
  %151 = getelementptr inbounds %struct.cx18, %struct.cx18* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load %struct.cx18*, %struct.cx18** %5, align 8
  %155 = getelementptr inbounds %struct.cx18, %struct.cx18* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @cx18_expand_service_set(%struct.TYPE_5__* %153, i32 %156)
  br label %158

158:                                              ; preds = %149, %118
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %104, %42, %23, %15
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @CX18_WARN(i8*) #1

declare dso_local i64 @cx18_get_service_set(%struct.TYPE_5__*) #1

declare dso_local i32 @cx18_expand_service_set(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
