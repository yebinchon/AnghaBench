; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-vbi.c_cx18_av_decode_vbi_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-vbi.c_cx18_av_decode_vbi_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_decode_vbi_line = type { i32, i32, i32, i32* }
%struct.cx18 = type { %struct.cx18_av_state }
%struct.cx18_av_state = type { i64 }
%struct.vbi_anc_data = type { i32*, i32, i32, i32*, i32* }

@sliced_vbi_did = common dso_local global i32* null, align 8
@V4L2_SLICED_TELETEXT_B = common dso_local global i32 0, align 4
@V4L2_SLICED_WSS_625 = common dso_local global i32 0, align 4
@V4L2_SLICED_CAPTION_525 = common dso_local global i32 0, align 4
@V4L2_SLICED_VPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_av_decode_vbi_line(%struct.v4l2_subdev* %0, %struct.v4l2_decode_vbi_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_decode_vbi_line*, align 8
  %6 = alloca %struct.cx18*, align 8
  %7 = alloca %struct.cx18_av_state*, align 8
  %8 = alloca %struct.vbi_anc_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_decode_vbi_line* %1, %struct.v4l2_decode_vbi_line** %5, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.cx18* %15, %struct.cx18** %6, align 8
  %16 = load %struct.cx18*, %struct.cx18** %6, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 0
  store %struct.cx18_av_state* %17, %struct.cx18_av_state** %7, align 8
  %18 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to %struct.vbi_anc_data*
  store %struct.vbi_anc_data* %21, %struct.vbi_anc_data** %8, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.vbi_anc_data*, %struct.vbi_anc_data** %8, align 8
  %23 = getelementptr inbounds %struct.vbi_anc_data, %struct.vbi_anc_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %2
  %29 = load %struct.vbi_anc_data*, %struct.vbi_anc_data** %8, align 8
  %30 = getelementptr inbounds %struct.vbi_anc_data, %struct.vbi_anc_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 255
  br i1 %34, label %58, label %35

35:                                               ; preds = %28
  %36 = load %struct.vbi_anc_data*, %struct.vbi_anc_data** %8, align 8
  %37 = getelementptr inbounds %struct.vbi_anc_data, %struct.vbi_anc_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 255
  br i1 %41, label %58, label %42

42:                                               ; preds = %35
  %43 = load %struct.vbi_anc_data*, %struct.vbi_anc_data** %8, align 8
  %44 = getelementptr inbounds %struct.vbi_anc_data, %struct.vbi_anc_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** @sliced_vbi_did, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = load %struct.vbi_anc_data*, %struct.vbi_anc_data** %8, align 8
  %52 = getelementptr inbounds %struct.vbi_anc_data, %struct.vbi_anc_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** @sliced_vbi_did, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %50, %35, %28, %2
  %59 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  store i32 0, i32* %3, align 4
  br label %154

63:                                               ; preds = %50, %42
  %64 = load %struct.vbi_anc_data*, %struct.vbi_anc_data** %8, align 8
  %65 = getelementptr inbounds %struct.vbi_anc_data, %struct.vbi_anc_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %10, align 4
  %67 = load %struct.vbi_anc_data*, %struct.vbi_anc_data** %8, align 8
  %68 = getelementptr inbounds %struct.vbi_anc_data, %struct.vbi_anc_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 15
  store i32 %70, i32* %11, align 4
  %71 = load %struct.vbi_anc_data*, %struct.vbi_anc_data** %8, align 8
  %72 = getelementptr inbounds %struct.vbi_anc_data, %struct.vbi_anc_data* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 63
  store i32 %76, i32* %12, align 4
  %77 = load %struct.cx18_av_state*, %struct.cx18_av_state** %7, align 8
  %78 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %12, align 4
  %84 = load %struct.vbi_anc_data*, %struct.vbi_anc_data** %8, align 8
  %85 = getelementptr inbounds %struct.vbi_anc_data, %struct.vbi_anc_data* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %9, align 8
  %87 = load i32, i32* %11, align 4
  switch i32 %87, label %117 [
    i32 1, label %88
    i32 4, label %90
    i32 6, label %92
    i32 9, label %109
  ]

88:                                               ; preds = %63
  %89 = load i32, i32* @V4L2_SLICED_TELETEXT_B, align 4
  store i32 %89, i32* %11, align 4
  br label %118

90:                                               ; preds = %63
  %91 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  store i32 %91, i32* %11, align 4
  br label %118

92:                                               ; preds = %63
  %93 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  store i32 %93, i32* %11, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @odd_parity(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @odd_parity(i32 %102)
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  br label %106

106:                                              ; preds = %99, %92
  %107 = phi i1 [ true, %92 ], [ %105, %99 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %13, align 4
  br label %118

109:                                              ; preds = %63
  %110 = load i32, i32* @V4L2_SLICED_VPS, align 4
  store i32 %110, i32* %11, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = call i32 @decode_vps(i32* %111, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 1, i32* %13, align 4
  br label %116

116:                                              ; preds = %115, %109
  br label %118

117:                                              ; preds = %63
  store i32 0, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %118

118:                                              ; preds = %117, %116, %106, %90, %88
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %124

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  br label %124

124:                                              ; preds = %122, %121
  %125 = phi i32 [ 0, %121 ], [ %123, %122 ]
  %126 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %127 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %133

131:                                              ; preds = %124
  %132 = load i32, i32* %12, align 4
  br label %133

133:                                              ; preds = %131, %130
  %134 = phi i32 [ 0, %130 ], [ %132, %131 ]
  %135 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %136 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %147

140:                                              ; preds = %133
  %141 = load i32, i32* %10, align 4
  %142 = load i32*, i32** @sliced_vbi_did, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %141, %144
  %146 = zext i1 %145 to i32
  br label %147

147:                                              ; preds = %140, %139
  %148 = phi i32 [ 0, %139 ], [ %146, %140 ]
  %149 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %150 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %153 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %152, i32 0, i32 3
  store i32* %151, i32** %153, align 8
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %147, %58
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @odd_parity(i32) #1

declare dso_local i32 @decode_vps(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
