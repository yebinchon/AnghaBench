; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_ProcessIsocData.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_ProcessIsocData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i64, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usbvideo_frame = type { i64, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@scan_Out = common dso_local global i32 0, align 4
@ScanState_Scanning = common dso_local global i64 0, align 8
@ScanState_Lines = common dso_local global i64 0, align 8
@IBMCAM_MODEL_2 = common dso_local global i32 0, align 4
@VIDEOSIZE_352x288 = common dso_local global i64 0, align 8
@VIDEOSIZE_320x240 = common dso_local global i64 0, align 8
@VIDEOSIZE_352x240 = common dso_local global i64 0, align 8
@IBMCAM_MODEL_4 = common dso_local global i32 0, align 4
@VIDEOSIZE_128x96 = common dso_local global i64 0, align 8
@IBMCAM_MODEL_3 = common dso_local global i32 0, align 4
@scan_Continue = common dso_local global i32 0, align 4
@scan_NextFrame = common dso_local global i32 0, align 4
@FrameState_Done = common dso_local global i32 0, align 4
@USBVIDEO_FRAME_FLAG_SOFTWARE_CONTRAST = common dso_local global i32 0, align 4
@FrameState_Ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*, %struct.usbvideo_frame*)* @ibmcam_ProcessIsocData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmcam_ProcessIsocData(%struct.uvd* %0, %struct.usbvideo_frame* %1) #0 {
  %3 = alloca %struct.uvd*, align 8
  %4 = alloca %struct.usbvideo_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %3, align 8
  store %struct.usbvideo_frame* %1, %struct.usbvideo_frame** %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.uvd*, %struct.uvd** %3, align 8
  %9 = call %struct.TYPE_4__* @IBMCAM_T(%struct.uvd* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %2, %122
  %13 = load i32, i32* @scan_Out, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.uvd*, %struct.uvd** %3, align 8
  %15 = getelementptr inbounds %struct.uvd, %struct.uvd* %14, i32 0, i32 4
  %16 = call i64 @RingQueue_GetLength(i32* %15)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %118

18:                                               ; preds = %12
  %19 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %20 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ScanState_Scanning, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.uvd*, %struct.uvd** %3, align 8
  %26 = call i32 @ibmcam_find_header(%struct.uvd* %25)
  store i32 %26, i32* %5, align 4
  br label %117

27:                                               ; preds = %18
  %28 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %29 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ScanState_Lines, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %116

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @IBMCAM_MODEL_2, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load %struct.uvd*, %struct.uvd** %3, align 8
  %39 = getelementptr inbounds %struct.uvd, %struct.uvd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VIDEOSIZE_352x288, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load %struct.uvd*, %struct.uvd** %3, align 8
  %45 = getelementptr inbounds %struct.uvd, %struct.uvd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VIDEOSIZE_320x240, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.uvd*, %struct.uvd** %3, align 8
  %51 = getelementptr inbounds %struct.uvd, %struct.uvd* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VIDEOSIZE_352x240, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49, %43, %37
  %56 = load %struct.uvd*, %struct.uvd** %3, align 8
  %57 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %58 = call i32 @ibmcam_model2_320x240_parse_lines(%struct.uvd* %56, %struct.usbvideo_frame* %57, i64* %6)
  store i32 %58, i32* %5, align 4
  br label %115

59:                                               ; preds = %49, %33
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @IBMCAM_MODEL_4, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %101

63:                                               ; preds = %59
  %64 = load %struct.uvd*, %struct.uvd** %3, align 8
  %65 = getelementptr inbounds %struct.uvd, %struct.uvd* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VIDEOSIZE_352x288, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  %70 = load %struct.uvd*, %struct.uvd** %3, align 8
  %71 = getelementptr inbounds %struct.uvd, %struct.uvd* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VIDEOSIZE_320x240, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.uvd*, %struct.uvd** %3, align 8
  %77 = getelementptr inbounds %struct.uvd, %struct.uvd* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VIDEOSIZE_352x240, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75, %69, %63
  %82 = load %struct.uvd*, %struct.uvd** %3, align 8
  %83 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %84 = call i32 @ibmcam_model2_320x240_parse_lines(%struct.uvd* %82, %struct.usbvideo_frame* %83, i64* %6)
  store i32 %84, i32* %5, align 4
  br label %100

85:                                               ; preds = %75
  %86 = load %struct.uvd*, %struct.uvd** %3, align 8
  %87 = getelementptr inbounds %struct.uvd, %struct.uvd* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VIDEOSIZE_128x96, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.uvd*, %struct.uvd** %3, align 8
  %93 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %94 = call i32 @ibmcam_model4_128x96_parse_lines(%struct.uvd* %92, %struct.usbvideo_frame* %93, i64* %6)
  store i32 %94, i32* %5, align 4
  br label %99

95:                                               ; preds = %85
  %96 = load %struct.uvd*, %struct.uvd** %3, align 8
  %97 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %98 = call i32 @ibmcam_parse_lines(%struct.uvd* %96, %struct.usbvideo_frame* %97, i64* %6)
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %91
  br label %100

100:                                              ; preds = %99, %81
  br label %114

101:                                              ; preds = %59
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @IBMCAM_MODEL_3, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct.uvd*, %struct.uvd** %3, align 8
  %107 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %108 = call i32 @ibmcam_model3_parse_lines(%struct.uvd* %106, %struct.usbvideo_frame* %107, i64* %6)
  store i32 %108, i32* %5, align 4
  br label %113

109:                                              ; preds = %101
  %110 = load %struct.uvd*, %struct.uvd** %3, align 8
  %111 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %112 = call i32 @ibmcam_parse_lines(%struct.uvd* %110, %struct.usbvideo_frame* %111, i64* %6)
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %100
  br label %115

115:                                              ; preds = %114, %55
  br label %116

116:                                              ; preds = %115, %27
  br label %117

117:                                              ; preds = %116, %24
  br label %118

118:                                              ; preds = %117, %12
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @scan_Continue, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %12

123:                                              ; preds = %118
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @scan_NextFrame, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @scan_Out, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127, %123
  br label %133

132:                                              ; preds = %127
  br label %168

133:                                              ; preds = %131
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @scan_NextFrame, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %133
  %138 = load i32, i32* @FrameState_Done, align 4
  %139 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %140 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.uvd*, %struct.uvd** %3, align 8
  %142 = getelementptr inbounds %struct.uvd, %struct.uvd* %141, i32 0, i32 1
  store i32 -1, i32* %142, align 8
  %143 = load %struct.uvd*, %struct.uvd** %3, align 8
  %144 = getelementptr inbounds %struct.uvd, %struct.uvd* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @IBMCAM_MODEL_2, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %137
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @IBMCAM_MODEL_4, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %151, %137
  %156 = load i32, i32* @USBVIDEO_FRAME_FLAG_SOFTWARE_CONTRAST, align 4
  %157 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %158 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %151
  br label %162

162:                                              ; preds = %161, %133
  %163 = load i64, i64* %6, align 8
  %164 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %165 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, %163
  store i64 %167, i64* %165, align 8
  br label %168

168:                                              ; preds = %162, %132
  ret void
}

declare dso_local %struct.TYPE_4__* @IBMCAM_T(%struct.uvd*) #1

declare dso_local i64 @RingQueue_GetLength(i32*) #1

declare dso_local i32 @ibmcam_find_header(%struct.uvd*) #1

declare dso_local i32 @ibmcam_model2_320x240_parse_lines(%struct.uvd*, %struct.usbvideo_frame*, i64*) #1

declare dso_local i32 @ibmcam_model4_128x96_parse_lines(%struct.uvd*, %struct.usbvideo_frame*, i64*) #1

declare dso_local i32 @ibmcam_parse_lines(%struct.uvd*, %struct.usbvideo_frame*, i64*) #1

declare dso_local i32 @ibmcam_model3_parse_lines(%struct.uvd*, %struct.usbvideo_frame*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
