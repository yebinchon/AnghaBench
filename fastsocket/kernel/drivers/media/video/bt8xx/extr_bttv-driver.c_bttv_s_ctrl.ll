; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.bttv_fh = type { i32, %struct.bttv* }
%struct.bttv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (%struct.bttv*, i32)*, i32 }

@core = common dso_local global i32 0, align 4
@s_ctrl = common dso_local global i32 0, align 4
@BT848_SCLOOP_CAGC = common dso_local global i32 0, align 4
@BT848_E_SCLOOP = common dso_local global i32 0, align 4
@BT848_O_SCLOOP = common dso_local global i32 0, align 4
@BT848_CONTROL_LDEC = common dso_local global i32 0, align 4
@BT848_E_CONTROL = common dso_local global i32 0, align 4
@BT848_O_CONTROL = common dso_local global i32 0, align 4
@BT848_ADC_RESERVED = common dso_local global i32 0, align 4
@BT848_ADC_CRUSH = common dso_local global i32 0, align 4
@BT848_ADC = common dso_local global i32 0, align 4
@BT848_WC_UP = common dso_local global i32 0, align 4
@BT848_WC_DOWN = common dso_local global i32 0, align 4
@BT848_OFORM_RANGE = common dso_local global i32 0, align 4
@BT848_OFORM = common dso_local global i32 0, align 4
@BT848_OFORM_CORE32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @bttv_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bttv_fh*, align 8
  %11 = alloca %struct.bttv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.bttv_fh*
  store %struct.bttv_fh* %13, %struct.bttv_fh** %10, align 8
  %14 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %15 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %14, i32 0, i32 1
  %16 = load %struct.bttv*, %struct.bttv** %15, align 8
  store %struct.bttv* %16, %struct.bttv** %11, align 8
  %17 = load %struct.bttv*, %struct.bttv** %11, align 8
  %18 = getelementptr inbounds %struct.bttv, %struct.bttv* %17, i32 0, i32 13
  %19 = load %struct.bttv_fh*, %struct.bttv_fh** %10, align 8
  %20 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @v4l2_prio_check(i32* %18, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 0, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %237

27:                                               ; preds = %3
  %28 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %233 [
    i32 142, label %31
    i32 140, label %37
    i32 141, label %43
    i32 128, label %49
    i32 145, label %55
    i32 143, label %61
    i32 147, label %81
    i32 146, label %81
    i32 144, label %81
    i32 137, label %87
    i32 136, label %108
    i32 133, label %114
    i32 138, label %141
    i32 139, label %147
    i32 131, label %166
    i32 129, label %172
    i32 130, label %183
    i32 132, label %194
    i32 134, label %205
    i32 135, label %219
  ]

31:                                               ; preds = %27
  %32 = load %struct.bttv*, %struct.bttv** %11, align 8
  %33 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bt848_bright(%struct.bttv* %32, i32 %35)
  br label %236

37:                                               ; preds = %27
  %38 = load %struct.bttv*, %struct.bttv** %11, align 8
  %39 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bt848_hue(%struct.bttv* %38, i32 %41)
  br label %236

43:                                               ; preds = %27
  %44 = load %struct.bttv*, %struct.bttv** %11, align 8
  %45 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bt848_contrast(%struct.bttv* %44, i32 %47)
  br label %236

49:                                               ; preds = %27
  %50 = load %struct.bttv*, %struct.bttv** %11, align 8
  %51 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bt848_sat(%struct.bttv* %50, i32 %53)
  br label %236

55:                                               ; preds = %27
  %56 = load %struct.bttv*, %struct.bttv** %11, align 8
  %57 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @audio_mute(%struct.bttv* %56, i32 %59)
  br label %61

61:                                               ; preds = %27, %55
  %62 = load %struct.bttv*, %struct.bttv** %11, align 8
  %63 = getelementptr inbounds %struct.bttv, %struct.bttv* %62, i32 0, i32 12
  %64 = load i32 (%struct.bttv*, i32)*, i32 (%struct.bttv*, i32)** %63, align 8
  %65 = icmp ne i32 (%struct.bttv*, i32)* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.bttv*, %struct.bttv** %11, align 8
  %68 = getelementptr inbounds %struct.bttv, %struct.bttv* %67, i32 0, i32 12
  %69 = load i32 (%struct.bttv*, i32)*, i32 (%struct.bttv*, i32)** %68, align 8
  %70 = load %struct.bttv*, %struct.bttv** %11, align 8
  %71 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %69(%struct.bttv* %70, i32 %73)
  br label %75

75:                                               ; preds = %66, %61
  %76 = load %struct.bttv*, %struct.bttv** %11, align 8
  %77 = load i32, i32* @core, align 4
  %78 = load i32, i32* @s_ctrl, align 4
  %79 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %80 = call i32 @bttv_call_all(%struct.bttv* %76, i32 %77, i32 %78, %struct.v4l2_control* %79)
  br label %236

81:                                               ; preds = %27, %27, %27
  %82 = load %struct.bttv*, %struct.bttv** %11, align 8
  %83 = load i32, i32* @core, align 4
  %84 = load i32, i32* @s_ctrl, align 4
  %85 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %86 = call i32 @bttv_call_all(%struct.bttv* %82, i32 %83, i32 %84, %struct.v4l2_control* %85)
  br label %236

87:                                               ; preds = %27
  %88 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bttv*, %struct.bttv** %11, align 8
  %92 = getelementptr inbounds %struct.bttv, %struct.bttv* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.bttv*, %struct.bttv** %11, align 8
  %94 = getelementptr inbounds %struct.bttv, %struct.bttv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32, i32* @BT848_SCLOOP_CAGC, align 4
  br label %100

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @BT848_E_SCLOOP, align 4
  %104 = call i32 @btwrite(i32 %102, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @BT848_O_SCLOOP, align 4
  %107 = call i32 @btwrite(i32 %105, i32 %106)
  br label %236

108:                                              ; preds = %27
  %109 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.bttv*, %struct.bttv** %11, align 8
  %113 = getelementptr inbounds %struct.bttv, %struct.bttv* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %236

114:                                              ; preds = %27
  %115 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.bttv*, %struct.bttv** %11, align 8
  %119 = getelementptr inbounds %struct.bttv, %struct.bttv* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.bttv*, %struct.bttv** %11, align 8
  %121 = getelementptr inbounds %struct.bttv, %struct.bttv* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %114
  %125 = load i32, i32* @BT848_CONTROL_LDEC, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* @BT848_E_CONTROL, align 4
  %128 = call i32 @btand(i32 %126, i32 %127)
  %129 = load i32, i32* @BT848_CONTROL_LDEC, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* @BT848_O_CONTROL, align 4
  %132 = call i32 @btand(i32 %130, i32 %131)
  br label %140

133:                                              ; preds = %114
  %134 = load i32, i32* @BT848_CONTROL_LDEC, align 4
  %135 = load i32, i32* @BT848_E_CONTROL, align 4
  %136 = call i32 @btor(i32 %134, i32 %135)
  %137 = load i32, i32* @BT848_CONTROL_LDEC, align 4
  %138 = load i32, i32* @BT848_O_CONTROL, align 4
  %139 = call i32 @btor(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %133, %124
  br label %236

141:                                              ; preds = %27
  %142 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %143 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.bttv*, %struct.bttv** %11, align 8
  %146 = getelementptr inbounds %struct.bttv, %struct.bttv* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  br label %236

147:                                              ; preds = %27
  %148 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %149 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.bttv*, %struct.bttv** %11, align 8
  %152 = getelementptr inbounds %struct.bttv, %struct.bttv* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @BT848_ADC_RESERVED, align 4
  %154 = load %struct.bttv*, %struct.bttv** %11, align 8
  %155 = getelementptr inbounds %struct.bttv, %struct.bttv* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %147
  %159 = load i32, i32* @BT848_ADC_CRUSH, align 4
  br label %161

160:                                              ; preds = %147
  br label %161

161:                                              ; preds = %160, %158
  %162 = phi i32 [ %159, %158 ], [ 0, %160 ]
  %163 = or i32 %153, %162
  %164 = load i32, i32* @BT848_ADC, align 4
  %165 = call i32 @btwrite(i32 %163, i32 %164)
  br label %236

166:                                              ; preds = %27
  %167 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %168 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.bttv*, %struct.bttv** %11, align 8
  %171 = getelementptr inbounds %struct.bttv, %struct.bttv* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 4
  br label %236

172:                                              ; preds = %27
  %173 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %174 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.bttv*, %struct.bttv** %11, align 8
  %177 = getelementptr inbounds %struct.bttv, %struct.bttv* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 8
  %178 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %179 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @BT848_WC_UP, align 4
  %182 = call i32 @btwrite(i32 %180, i32 %181)
  br label %236

183:                                              ; preds = %27
  %184 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %185 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.bttv*, %struct.bttv** %11, align 8
  %188 = getelementptr inbounds %struct.bttv, %struct.bttv* %187, i32 0, i32 7
  store i32 %186, i32* %188, align 4
  %189 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %190 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @BT848_WC_DOWN, align 4
  %193 = call i32 @btwrite(i32 %191, i32 %192)
  br label %236

194:                                              ; preds = %27
  %195 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %196 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.bttv*, %struct.bttv** %11, align 8
  %199 = getelementptr inbounds %struct.bttv, %struct.bttv* %198, i32 0, i32 8
  store i32 %197, i32* %199, align 8
  %200 = load %struct.bttv*, %struct.bttv** %11, align 8
  %201 = load %struct.bttv*, %struct.bttv** %11, align 8
  %202 = getelementptr inbounds %struct.bttv, %struct.bttv* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @bt848_sat(%struct.bttv* %200, i32 %203)
  br label %236

205:                                              ; preds = %27
  %206 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %207 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.bttv*, %struct.bttv** %11, align 8
  %210 = getelementptr inbounds %struct.bttv, %struct.bttv* %209, i32 0, i32 10
  store i32 %208, i32* %210, align 8
  %211 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %212 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = shl i32 %213, 7
  %215 = load i32, i32* @BT848_OFORM_RANGE, align 4
  %216 = xor i32 %215, -1
  %217 = load i32, i32* @BT848_OFORM, align 4
  %218 = call i32 @btaor(i32 %214, i32 %216, i32 %217)
  br label %236

219:                                              ; preds = %27
  %220 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %221 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.bttv*, %struct.bttv** %11, align 8
  %224 = getelementptr inbounds %struct.bttv, %struct.bttv* %223, i32 0, i32 11
  store i32 %222, i32* %224, align 4
  %225 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %226 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = shl i32 %227, 5
  %229 = load i32, i32* @BT848_OFORM_CORE32, align 4
  %230 = xor i32 %229, -1
  %231 = load i32, i32* @BT848_OFORM, align 4
  %232 = call i32 @btaor(i32 %228, i32 %230, i32 %231)
  br label %236

233:                                              ; preds = %27
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %4, align 4
  br label %237

236:                                              ; preds = %219, %205, %194, %183, %172, %166, %161, %141, %140, %108, %100, %81, %75, %49, %43, %37, %31
  store i32 0, i32* %4, align 4
  br label %237

237:                                              ; preds = %236, %233, %25
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i32 @bt848_bright(%struct.bttv*, i32) #1

declare dso_local i32 @bt848_hue(%struct.bttv*, i32) #1

declare dso_local i32 @bt848_contrast(%struct.bttv*, i32) #1

declare dso_local i32 @bt848_sat(%struct.bttv*, i32) #1

declare dso_local i32 @audio_mute(%struct.bttv*, i32) #1

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32, %struct.v4l2_control*) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @btand(i32, i32) #1

declare dso_local i32 @btor(i32, i32) #1

declare dso_local i32 @btaor(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
