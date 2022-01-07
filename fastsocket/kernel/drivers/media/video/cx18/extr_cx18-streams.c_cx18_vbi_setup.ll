; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_vbi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_vbi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i32, %struct.cx18* }
%struct.cx18 = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@vbi = common dso_local global i32 0, align 4
@s_raw_fmt = common dso_local global i32 0, align 4
@s_sliced_fmt = common dso_local global i32 0, align 4
@vbi_active_samples = common dso_local global i32 0, align 4
@vbi_hblank_samples_60Hz = common dso_local global i32 0, align 4
@vbi_hblank_samples_50Hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Setup VBI h: %d lines %x bpl %d fr %d %x %x\0A\00", align 1
@CX18_CPU_SET_RAW_VBI_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18_stream*)* @cx18_vbi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_vbi_setup(%struct.cx18_stream* %0) #0 {
  %2 = alloca %struct.cx18_stream*, align 8
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cx18_stream* %0, %struct.cx18_stream** %2, align 8
  %8 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %9 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %8, i32 0, i32 1
  %10 = load %struct.cx18*, %struct.cx18** %9, align 8
  store %struct.cx18* %10, %struct.cx18** %3, align 8
  %11 = load %struct.cx18*, %struct.cx18** %3, align 8
  %12 = call i32 @cx18_raw_vbi(%struct.cx18* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.cx18*, %struct.cx18** %3, align 8
  %18 = getelementptr inbounds %struct.cx18, %struct.cx18* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.cx18*, %struct.cx18** %3, align 8
  %23 = getelementptr inbounds %struct.cx18, %struct.cx18* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 12, i32* %24, align 8
  %25 = load %struct.cx18*, %struct.cx18** %3, align 8
  %26 = getelementptr inbounds %struct.cx18, %struct.cx18* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 10, i32* %29, align 4
  %30 = load %struct.cx18*, %struct.cx18** %3, align 8
  %31 = getelementptr inbounds %struct.cx18, %struct.cx18* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 273, i32* %34, align 4
  br label %49

35:                                               ; preds = %1
  %36 = load %struct.cx18*, %struct.cx18** %3, align 8
  %37 = getelementptr inbounds %struct.cx18, %struct.cx18* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 18, i32* %38, align 8
  %39 = load %struct.cx18*, %struct.cx18** %3, align 8
  %40 = getelementptr inbounds %struct.cx18, %struct.cx18* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 6, i32* %43, align 4
  %44 = load %struct.cx18*, %struct.cx18** %3, align 8
  %45 = getelementptr inbounds %struct.cx18, %struct.cx18* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 318, i32* %48, align 4
  br label %49

49:                                               ; preds = %35, %21
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load %struct.cx18*, %struct.cx18** %3, align 8
  %54 = getelementptr inbounds %struct.cx18, %struct.cx18* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @vbi, align 4
  %57 = load i32, i32* @s_raw_fmt, align 4
  %58 = load %struct.cx18*, %struct.cx18** %3, align 8
  %59 = getelementptr inbounds %struct.cx18, %struct.cx18* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = call i32 @v4l2_subdev_call(i32 %55, i32 %56, i32 %57, i32* %62)
  br label %76

64:                                               ; preds = %49
  %65 = load %struct.cx18*, %struct.cx18** %3, align 8
  %66 = getelementptr inbounds %struct.cx18, %struct.cx18* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @vbi, align 4
  %69 = load i32, i32* @s_sliced_fmt, align 4
  %70 = load %struct.cx18*, %struct.cx18** %3, align 8
  %71 = getelementptr inbounds %struct.cx18, %struct.cx18* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @v4l2_subdev_call(i32 %67, i32 %68, i32 %69, i32* %74)
  br label %76

76:                                               ; preds = %64, %52
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.cx18*, %struct.cx18** %3, align 8
  %81 = getelementptr inbounds %struct.cx18, %struct.cx18* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %83, 2
  store i32 %84, i32* %7, align 4
  br label %92

85:                                               ; preds = %76
  %86 = load %struct.cx18*, %struct.cx18** %3, align 8
  %87 = getelementptr inbounds %struct.cx18, %struct.cx18* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 36, i32 44
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %85, %79
  %93 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %94 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %95, i32* %96, align 16
  %97 = load i32, i32* %7, align 4
  %98 = sdiv i32 %97, 2
  %99 = load i32, i32* %7, align 4
  %100 = sdiv i32 %99, 2
  %101 = shl i32 %100, 16
  %102 = or i32 %98, %101
  %103 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %92
  %107 = load i32, i32* @vbi_active_samples, align 4
  br label %119

108:                                              ; preds = %92
  %109 = load %struct.cx18*, %struct.cx18** %3, align 8
  %110 = getelementptr inbounds %struct.cx18, %struct.cx18* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @vbi_hblank_samples_60Hz, align 4
  br label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @vbi_hblank_samples_50Hz, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  br label %119

119:                                              ; preds = %117, %106
  %120 = phi i32 [ %107, %106 ], [ %118, %117 ]
  %121 = getelementptr inbounds i32, i32* %16, i64 2
  store i32 %120, i32* %121, align 8
  %122 = getelementptr inbounds i32, i32* %16, i64 3
  store i32 1, i32* %122, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = getelementptr inbounds i32, i32* %16, i64 4
  store i32 543170656, i32* %126, align 16
  %127 = getelementptr inbounds i32, i32* %16, i64 5
  store i32 812683472, i32* %127, align 4
  br label %131

128:                                              ; preds = %119
  %129 = getelementptr inbounds i32, i32* %16, i64 4
  store i32 -1326403344, i32* %129, align 16
  %130 = getelementptr inbounds i32, i32* %16, i64 5
  store i32 -1595891488, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %125
  %132 = getelementptr inbounds i32, i32* %16, i64 0
  %133 = load i32, i32* %132, align 16
  %134 = getelementptr inbounds i32, i32* %16, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds i32, i32* %16, i64 2
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds i32, i32* %16, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds i32, i32* %16, i64 4
  %141 = load i32, i32* %140, align 16
  %142 = getelementptr inbounds i32, i32* %16, i64 5
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %135, i32 %137, i32 %139, i32 %141, i32 %143)
  %145 = load %struct.cx18*, %struct.cx18** %3, align 8
  %146 = load i32, i32* @CX18_CPU_SET_RAW_VBI_PARAM, align 4
  %147 = call i32 @cx18_api(%struct.cx18* %145, i32 %146, i32 6, i32* %16)
  %148 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %148)
  ret void
}

declare dso_local i32 @cx18_raw_vbi(%struct.cx18*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_api(%struct.cx18*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
