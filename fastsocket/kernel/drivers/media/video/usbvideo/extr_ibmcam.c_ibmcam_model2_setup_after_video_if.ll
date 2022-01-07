; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model2_setup_after_video_if.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model2_setup_after_video_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@mod2_brightness = common dso_local global i32 0, align 4
@framerate = common dso_local global i16 0, align 2
@FRAMERATE_MIN = common dso_local global i16 0, align 2
@FRAMERATE_MAX = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [28 x i8] c"Framerate (hardware): %hd.\0A\00", align 1
@mod2_set_framerate = common dso_local global i32 0, align 4
@mod2_sensitivity = common dso_local global i32 0, align 4
@lighting = common dso_local global i32 0, align 4
@init_model2_rg2 = common dso_local global i16 0, align 2
@init_model2_sat = common dso_local global i16 0, align 2
@init_model2_yb = common dso_local global i16 0, align 2
@mod2_color_balance_rg2 = common dso_local global i32 0, align 4
@mod2_saturation = common dso_local global i32 0, align 4
@mod2_color_balance_yb = common dso_local global i32 0, align 4
@mod2_hue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @ibmcam_model2_setup_after_video_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmcam_model2_setup_after_video_if(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %8 = load %struct.uvd*, %struct.uvd** %2, align 8
  %9 = call i32 @ibmcam_veio(%struct.uvd* %8, i32 0, i32 0, i32 256)
  %10 = load %struct.uvd*, %struct.uvd** %2, align 8
  %11 = getelementptr inbounds %struct.uvd, %struct.uvd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %23 [
    i32 131, label %13
    i32 130, label %18
    i32 129, label %18
    i32 128, label %18
  ]

13:                                               ; preds = %1
  %14 = load %struct.uvd*, %struct.uvd** %2, align 8
  %15 = call i32 @ibmcam_veio(%struct.uvd* %14, i32 0, i32 80, i32 273)
  %16 = load %struct.uvd*, %struct.uvd** %2, align 8
  %17 = call i32 @ibmcam_veio(%struct.uvd* %16, i32 0, i32 208, i32 273)
  br label %23

18:                                               ; preds = %1, %1, %1
  %19 = load %struct.uvd*, %struct.uvd** %2, align 8
  %20 = call i32 @ibmcam_veio(%struct.uvd* %19, i32 0, i32 64, i32 273)
  %21 = load %struct.uvd*, %struct.uvd** %2, align 8
  %22 = call i32 @ibmcam_veio(%struct.uvd* %21, i32 0, i32 192, i32 273)
  br label %23

23:                                               ; preds = %1, %18, %13
  %24 = load %struct.uvd*, %struct.uvd** %2, align 8
  %25 = call i32 @ibmcam_veio(%struct.uvd* %24, i32 0, i32 155, i32 271)
  %26 = load %struct.uvd*, %struct.uvd** %2, align 8
  %27 = call i32 @ibmcam_veio(%struct.uvd* %26, i32 0, i32 187, i32 271)
  %28 = load %struct.uvd*, %struct.uvd** %2, align 8
  %29 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %28, i32 10, i32 92)
  %30 = load %struct.uvd*, %struct.uvd** %2, align 8
  %31 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %30, i32 4, i32 0)
  %32 = load %struct.uvd*, %struct.uvd** %2, align 8
  %33 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %32, i32 6, i32 251)
  %34 = load %struct.uvd*, %struct.uvd** %2, align 8
  %35 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %34, i32 8, i32 0)
  %36 = load %struct.uvd*, %struct.uvd** %2, align 8
  %37 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %36, i32 12, i32 9)
  %38 = load %struct.uvd*, %struct.uvd** %2, align 8
  %39 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %38, i32 18, i32 10)
  %40 = load %struct.uvd*, %struct.uvd** %2, align 8
  %41 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %40, i32 42, i32 0)
  %42 = load %struct.uvd*, %struct.uvd** %2, align 8
  %43 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %42, i32 44, i32 0)
  %44 = load %struct.uvd*, %struct.uvd** %2, align 8
  %45 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %44, i32 46, i32 8)
  %46 = load %struct.uvd*, %struct.uvd** %2, align 8
  %47 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %46, i32 48, i32 0)
  %48 = load %struct.uvd*, %struct.uvd** %2, align 8
  %49 = getelementptr inbounds %struct.uvd, %struct.uvd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %79 [
    i32 131, label %51
    i32 130, label %58
    i32 129, label %65
    i32 128, label %72
  ]

51:                                               ; preds = %23
  %52 = load %struct.uvd*, %struct.uvd** %2, align 8
  %53 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %52, i32 20, i32 2)
  %54 = load %struct.uvd*, %struct.uvd** %2, align 8
  %55 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %54, i32 22, i32 2)
  %56 = load %struct.uvd*, %struct.uvd** %2, align 8
  %57 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %56, i32 24, i32 74)
  br label %79

58:                                               ; preds = %23
  %59 = load %struct.uvd*, %struct.uvd** %2, align 8
  %60 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %59, i32 20, i32 9)
  %61 = load %struct.uvd*, %struct.uvd** %2, align 8
  %62 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %61, i32 22, i32 5)
  %63 = load %struct.uvd*, %struct.uvd** %2, align 8
  %64 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %63, i32 24, i32 68)
  br label %79

65:                                               ; preds = %23
  %66 = load %struct.uvd*, %struct.uvd** %2, align 8
  %67 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %66, i32 20, i32 9)
  %68 = load %struct.uvd*, %struct.uvd** %2, align 8
  %69 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %68, i32 22, i32 3)
  %70 = load %struct.uvd*, %struct.uvd** %2, align 8
  %71 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %70, i32 24, i32 68)
  br label %79

72:                                               ; preds = %23
  %73 = load %struct.uvd*, %struct.uvd** %2, align 8
  %74 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %73, i32 20, i32 3)
  %75 = load %struct.uvd*, %struct.uvd** %2, align 8
  %76 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %75, i32 22, i32 2)
  %77 = load %struct.uvd*, %struct.uvd** %2, align 8
  %78 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %77, i32 24, i32 74)
  br label %79

79:                                               ; preds = %23, %72, %65, %58, %51
  %80 = load %struct.uvd*, %struct.uvd** %2, align 8
  %81 = load i32, i32* @mod2_brightness, align 4
  %82 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %80, i32 %81, i32 90)
  store i16 31, i16* %6, align 2
  %83 = load i16, i16* @framerate, align 2
  %84 = load i16, i16* @FRAMERATE_MIN, align 2
  %85 = load i16, i16* @FRAMERATE_MAX, align 2
  %86 = sext i16 %85 to i32
  %87 = call i32 @RESTRICT_TO_RANGE(i16 signext %83, i16 signext %84, i32 %86)
  %88 = load i16, i16* @FRAMERATE_MAX, align 2
  %89 = sext i16 %88 to i32
  %90 = load i16, i16* @framerate, align 2
  %91 = sext i16 %90 to i32
  %92 = sub nsw i32 %89, %91
  %93 = load i16, i16* @FRAMERATE_MIN, align 2
  %94 = sext i16 %93 to i32
  %95 = add nsw i32 %92, %94
  %96 = trunc i32 %95 to i16
  store i16 %96, i16* %7, align 2
  %97 = load %struct.uvd*, %struct.uvd** %2, align 8
  %98 = getelementptr inbounds %struct.uvd, %struct.uvd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %124 [
    i32 131, label %100
    i32 130, label %106
    i32 129, label %112
    i32 128, label %118
  ]

100:                                              ; preds = %79
  %101 = load i16, i16* %7, align 2
  %102 = sext i16 %101 to i32
  %103 = mul nsw i32 %102, 4
  %104 = add nsw i32 6, %103
  %105 = trunc i32 %104 to i16
  store i16 %105, i16* %6, align 2
  br label %124

106:                                              ; preds = %79
  %107 = load i16, i16* %7, align 2
  %108 = sext i16 %107 to i32
  %109 = mul nsw i32 %108, 3
  %110 = add nsw i32 8, %109
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %6, align 2
  br label %124

112:                                              ; preds = %79
  %113 = load i16, i16* %7, align 2
  %114 = sext i16 %113 to i32
  %115 = mul nsw i32 %114, 2
  %116 = add nsw i32 10, %115
  %117 = trunc i32 %116 to i16
  store i16 %117, i16* %6, align 2
  br label %124

118:                                              ; preds = %79
  %119 = load i16, i16* %7, align 2
  %120 = sext i16 %119 to i32
  %121 = sdiv i32 %120, 2
  %122 = add nsw i32 28, %121
  %123 = trunc i32 %122 to i16
  store i16 %123, i16* %6, align 2
  br label %124

124:                                              ; preds = %79, %118, %112, %106, %100
  %125 = load %struct.uvd*, %struct.uvd** %2, align 8
  %126 = getelementptr inbounds %struct.uvd, %struct.uvd* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.uvd*, %struct.uvd** %2, align 8
  %131 = getelementptr inbounds %struct.uvd, %struct.uvd* %130, i32 0, i32 3
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i16, i16* %6, align 2
  %135 = call i32 @dev_info(i32* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i16 signext %134)
  br label %136

136:                                              ; preds = %129, %124
  %137 = load i16, i16* %6, align 2
  %138 = call i32 @RESTRICT_TO_RANGE(i16 signext %137, i16 signext 0, i32 31)
  %139 = load %struct.uvd*, %struct.uvd** %2, align 8
  %140 = load i32, i32* @mod2_set_framerate, align 4
  %141 = load i16, i16* %6, align 2
  %142 = sext i16 %141 to i32
  %143 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %139, i32 %140, i32 %142)
  %144 = load %struct.uvd*, %struct.uvd** %2, align 8
  %145 = getelementptr inbounds %struct.uvd, %struct.uvd* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  switch i32 %146, label %159 [
    i32 131, label %147
    i32 130, label %150
    i32 129, label %153
    i32 128, label %156
  ]

147:                                              ; preds = %136
  %148 = load %struct.uvd*, %struct.uvd** %2, align 8
  %149 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %148, i32 38, i32 194)
  br label %159

150:                                              ; preds = %136
  %151 = load %struct.uvd*, %struct.uvd** %2, align 8
  %152 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %151, i32 38, i32 68)
  br label %159

153:                                              ; preds = %136
  %154 = load %struct.uvd*, %struct.uvd** %2, align 8
  %155 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %154, i32 38, i32 70)
  br label %159

156:                                              ; preds = %136
  %157 = load %struct.uvd*, %struct.uvd** %2, align 8
  %158 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %157, i32 38, i32 72)
  br label %159

159:                                              ; preds = %136, %156, %153, %150, %147
  %160 = load %struct.uvd*, %struct.uvd** %2, align 8
  %161 = load i32, i32* @mod2_sensitivity, align 4
  %162 = load i32, i32* @lighting, align 4
  %163 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %160, i32 %161, i32 %162)
  %164 = load i16, i16* @init_model2_rg2, align 2
  %165 = sext i16 %164 to i32
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load i16, i16* @init_model2_rg2, align 2
  %169 = call i32 @RESTRICT_TO_RANGE(i16 signext %168, i16 signext 0, i32 255)
  %170 = load i16, i16* @init_model2_rg2, align 2
  store i16 %170, i16* %3, align 2
  br label %172

171:                                              ; preds = %159
  store i16 47, i16* %3, align 2
  br label %172

172:                                              ; preds = %171, %167
  %173 = load i16, i16* @init_model2_sat, align 2
  %174 = sext i16 %173 to i32
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i16, i16* @init_model2_sat, align 2
  %178 = call i32 @RESTRICT_TO_RANGE(i16 signext %177, i16 signext 0, i32 255)
  %179 = load i16, i16* @init_model2_sat, align 2
  store i16 %179, i16* %4, align 2
  br label %181

180:                                              ; preds = %172
  store i16 52, i16* %4, align 2
  br label %181

181:                                              ; preds = %180, %176
  %182 = load i16, i16* @init_model2_yb, align 2
  %183 = sext i16 %182 to i32
  %184 = icmp sge i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = load i16, i16* @init_model2_yb, align 2
  %187 = call i32 @RESTRICT_TO_RANGE(i16 signext %186, i16 signext 0, i32 255)
  %188 = load i16, i16* @init_model2_yb, align 2
  store i16 %188, i16* %5, align 2
  br label %190

189:                                              ; preds = %181
  store i16 160, i16* %5, align 2
  br label %190

190:                                              ; preds = %189, %185
  %191 = load %struct.uvd*, %struct.uvd** %2, align 8
  %192 = load i32, i32* @mod2_color_balance_rg2, align 4
  %193 = load i16, i16* %3, align 2
  %194 = zext i16 %193 to i32
  %195 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %191, i32 %192, i32 %194)
  %196 = load %struct.uvd*, %struct.uvd** %2, align 8
  %197 = load i32, i32* @mod2_saturation, align 4
  %198 = load i16, i16* %4, align 2
  %199 = zext i16 %198 to i32
  %200 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %196, i32 %197, i32 %199)
  %201 = load %struct.uvd*, %struct.uvd** %2, align 8
  %202 = load i32, i32* @mod2_color_balance_yb, align 4
  %203 = load i16, i16* %5, align 2
  %204 = zext i16 %203 to i32
  %205 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %201, i32 %202, i32 %204)
  %206 = load %struct.uvd*, %struct.uvd** %2, align 8
  %207 = load i32, i32* @mod2_hue, align 4
  %208 = load %struct.uvd*, %struct.uvd** %2, align 8
  %209 = getelementptr inbounds %struct.uvd, %struct.uvd* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = ashr i32 %211, 9
  %213 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %206, i32 %207, i32 %212)
  %214 = load %struct.uvd*, %struct.uvd** %2, align 8
  %215 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %214, i32 48, i32 4)
  %216 = load %struct.uvd*, %struct.uvd** %2, align 8
  %217 = call i32 @ibmcam_veio(%struct.uvd* %216, i32 0, i32 192, i32 268)
  %218 = load %struct.uvd*, %struct.uvd** %2, align 8
  %219 = getelementptr inbounds %struct.uvd, %struct.uvd* %218, i32 0, i32 3
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = load %struct.uvd*, %struct.uvd** %2, align 8
  %222 = getelementptr inbounds %struct.uvd, %struct.uvd* %221, i32 0, i32 3
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = load %struct.uvd*, %struct.uvd** %2, align 8
  %225 = getelementptr inbounds %struct.uvd, %struct.uvd* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @usb_rcvisocpipe(%struct.TYPE_5__* %223, i32 %226)
  %228 = call i32 @usb_clear_halt(%struct.TYPE_5__* %220, i32 %227)
  ret void
}

declare dso_local i32 @ibmcam_veio(%struct.uvd*, i32, i32, i32) #1

declare dso_local i32 @ibmcam_model2_Packet1(%struct.uvd*, i32, i32) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i16 signext, i16 signext, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i16 signext) #1

declare dso_local i32 @usb_clear_halt(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
