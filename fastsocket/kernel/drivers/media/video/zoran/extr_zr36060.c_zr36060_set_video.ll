; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36060.c_zr36060_set_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36060.c_zr36060_set_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videocodec = type { i64 }
%struct.tvnorm = type { i32, i32, i32, i32, i32, i64 }
%struct.vfe_settings = type { i32, i32, i32, i32, i32, i32 }
%struct.vfe_polarity = type { i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.zr36060 = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"%s: set_video %d/%d-%dx%d (%%%d) call\0A\00", align 1
@ZR060_LOAD = common dso_local global i32 0, align 4
@ZR060_LOAD_SyncRst = common dso_local global i32 0, align 4
@ZR060_VPR_VSPol = common dso_local global i32 0, align 4
@ZR060_VPR_HSPol = common dso_local global i32 0, align 4
@ZR060_VPR_FIPol = common dso_local global i32 0, align 4
@ZR060_VPR_BLPol = common dso_local global i32 0, align 4
@ZR060_VPR_SImgPol = common dso_local global i32 0, align 4
@ZR060_VPR_PoePol = common dso_local global i32 0, align 4
@ZR060_VPR_PValPol = common dso_local global i32 0, align 4
@ZR060_VPR_VCLKPol = common dso_local global i32 0, align 4
@ZR060_VPR = common dso_local global i32 0, align 4
@ZR060_SR_HScale2 = common dso_local global i32 0, align 4
@ZR060_SR_HScale4 = common dso_local global i32 0, align 4
@ZR060_SR_VScale = common dso_local global i32 0, align 4
@ZR060_SR = common dso_local global i32 0, align 4
@ZR060_BCR_Y = common dso_local global i32 0, align 4
@ZR060_BCR_U = common dso_local global i32 0, align 4
@ZR060_BCR_V = common dso_local global i32 0, align 4
@ZR060_SGR_VTOTAL_HI = common dso_local global i32 0, align 4
@ZR060_SGR_VTOTAL_LO = common dso_local global i32 0, align 4
@ZR060_SGR_HTOTAL_HI = common dso_local global i32 0, align 4
@ZR060_SGR_HTOTAL_LO = common dso_local global i32 0, align 4
@ZR060_SGR_VSYNC = common dso_local global i32 0, align 4
@ZR060_SGR_HSYNC = common dso_local global i32 0, align 4
@ZR060_SGR_BVSTART = common dso_local global i32 0, align 4
@ZR060_SGR_BVEND_HI = common dso_local global i32 0, align 4
@ZR060_SGR_BVEND_LO = common dso_local global i32 0, align 4
@ZR060_SGR_BHSTART = common dso_local global i32 0, align 4
@ZR060_SGR_BHEND_HI = common dso_local global i32 0, align 4
@ZR060_SGR_BHEND_LO = common dso_local global i32 0, align 4
@ZR060_AAR_VSTART_HI = common dso_local global i32 0, align 4
@ZR060_AAR_VSTART_LO = common dso_local global i32 0, align 4
@ZR060_AAR_VEND_HI = common dso_local global i32 0, align 4
@ZR060_AAR_VEND_LO = common dso_local global i32 0, align 4
@ZR060_AAR_HSTART_HI = common dso_local global i32 0, align 4
@ZR060_AAR_HSTART_LO = common dso_local global i32 0, align 4
@ZR060_AAR_HEND_HI = common dso_local global i32 0, align 4
@ZR060_AAR_HEND_LO = common dso_local global i32 0, align 4
@ZR060_SWR_VSTART_HI = common dso_local global i32 0, align 4
@ZR060_SWR_VSTART_LO = common dso_local global i32 0, align 4
@ZR060_SWR_VEND_HI = common dso_local global i32 0, align 4
@ZR060_SWR_VEND_LO = common dso_local global i32 0, align 4
@ZR060_SWR_HSTART_HI = common dso_local global i32 0, align 4
@ZR060_SWR_HSTART_LO = common dso_local global i32 0, align 4
@ZR060_SWR_HEND_HI = common dso_local global i32 0, align 4
@ZR060_SWR_HEND_LO = common dso_local global i32 0, align 4
@low_bitrate = common dso_local global i64 0, align 8
@ZR060_MBCVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videocodec*, %struct.tvnorm*, %struct.vfe_settings*, %struct.vfe_polarity*)* @zr36060_set_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr36060_set_video(%struct.videocodec* %0, %struct.tvnorm* %1, %struct.vfe_settings* %2, %struct.vfe_polarity* %3) #0 {
  %5 = alloca %struct.videocodec*, align 8
  %6 = alloca %struct.tvnorm*, align 8
  %7 = alloca %struct.vfe_settings*, align 8
  %8 = alloca %struct.vfe_polarity*, align 8
  %9 = alloca %struct.zr36060*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.videocodec* %0, %struct.videocodec** %5, align 8
  store %struct.tvnorm* %1, %struct.tvnorm** %6, align 8
  store %struct.vfe_settings* %2, %struct.vfe_settings** %7, align 8
  store %struct.vfe_polarity* %3, %struct.vfe_polarity** %8, align 8
  %12 = load %struct.videocodec*, %struct.videocodec** %5, align 8
  %13 = getelementptr inbounds %struct.videocodec, %struct.videocodec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.zr36060*
  store %struct.zr36060* %15, %struct.zr36060** %9, align 8
  %16 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %17 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %20 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %23 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %26 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %29 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %32 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %36 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %39 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  %42 = sdiv i32 %37, %41
  %43 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %44 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %46 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %49 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 8
  %52 = sdiv i32 %47, %51
  %53 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %54 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %56 = load i32, i32* @ZR060_LOAD, align 4
  %57 = load i32, i32* @ZR060_LOAD_SyncRst, align 4
  %58 = call i32 @zr36060_write(%struct.zr36060* %55, i32 %56, i32 %57)
  %59 = load %struct.vfe_polarity*, %struct.vfe_polarity** %8, align 8
  %60 = getelementptr inbounds %struct.vfe_polarity, %struct.vfe_polarity* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %4
  %64 = load i32, i32* @ZR060_VPR_VSPol, align 4
  br label %66

65:                                               ; preds = %4
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = load %struct.vfe_polarity*, %struct.vfe_polarity** %8, align 8
  %69 = getelementptr inbounds %struct.vfe_polarity, %struct.vfe_polarity* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @ZR060_VPR_HSPol, align 4
  br label %75

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = or i32 %67, %76
  %78 = load %struct.vfe_polarity*, %struct.vfe_polarity** %8, align 8
  %79 = getelementptr inbounds %struct.vfe_polarity, %struct.vfe_polarity* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @ZR060_VPR_FIPol, align 4
  br label %85

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  %87 = or i32 %77, %86
  %88 = load %struct.vfe_polarity*, %struct.vfe_polarity** %8, align 8
  %89 = getelementptr inbounds %struct.vfe_polarity, %struct.vfe_polarity* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @ZR060_VPR_BLPol, align 4
  br label %95

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %93, %92 ], [ 0, %94 ]
  %97 = or i32 %87, %96
  %98 = load %struct.vfe_polarity*, %struct.vfe_polarity** %8, align 8
  %99 = getelementptr inbounds %struct.vfe_polarity, %struct.vfe_polarity* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @ZR060_VPR_SImgPol, align 4
  br label %105

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i32 [ %103, %102 ], [ 0, %104 ]
  %107 = or i32 %97, %106
  %108 = load %struct.vfe_polarity*, %struct.vfe_polarity** %8, align 8
  %109 = getelementptr inbounds %struct.vfe_polarity, %struct.vfe_polarity* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @ZR060_VPR_PoePol, align 4
  br label %115

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ]
  %117 = or i32 %107, %116
  %118 = load %struct.vfe_polarity*, %struct.vfe_polarity** %8, align 8
  %119 = getelementptr inbounds %struct.vfe_polarity, %struct.vfe_polarity* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @ZR060_VPR_PValPol, align 4
  br label %125

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i32 [ %123, %122 ], [ 0, %124 ]
  %127 = or i32 %117, %126
  %128 = load %struct.vfe_polarity*, %struct.vfe_polarity** %8, align 8
  %129 = getelementptr inbounds %struct.vfe_polarity, %struct.vfe_polarity* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @ZR060_VPR_VCLKPol, align 4
  br label %135

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 0, %134 ]
  %137 = or i32 %127, %136
  store i32 %137, i32* %10, align 4
  %138 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %139 = load i32, i32* @ZR060_VPR, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @zr36060_write(%struct.zr36060* %138, i32 %139, i32 %140)
  store i32 0, i32* %10, align 4
  %142 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %143 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 255
  switch i32 %145, label %146 [
    i32 1, label %147
    i32 2, label %148
    i32 4, label %152
  ]

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %135, %146
  br label %156

148:                                              ; preds = %135
  %149 = load i32, i32* @ZR060_SR_HScale2, align 4
  %150 = load i32, i32* %10, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %10, align 4
  br label %156

152:                                              ; preds = %135
  %153 = load i32, i32* @ZR060_SR_HScale4, align 4
  %154 = load i32, i32* %10, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %152, %148, %147
  %157 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %158 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 8
  switch i32 %160, label %161 [
    i32 1, label %162
    i32 2, label %163
  ]

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %156, %161
  br label %167

163:                                              ; preds = %156
  %164 = load i32, i32* @ZR060_SR_VScale, align 4
  %165 = load i32, i32* %10, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %163, %162
  %168 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %169 = load i32, i32* @ZR060_SR, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @zr36060_write(%struct.zr36060* %168, i32 %169, i32 %170)
  %172 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %173 = load i32, i32* @ZR060_BCR_Y, align 4
  %174 = call i32 @zr36060_write(%struct.zr36060* %172, i32 %173, i32 0)
  %175 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %176 = load i32, i32* @ZR060_BCR_U, align 4
  %177 = call i32 @zr36060_write(%struct.zr36060* %175, i32 %176, i32 128)
  %178 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %179 = load i32, i32* @ZR060_BCR_V, align 4
  %180 = call i32 @zr36060_write(%struct.zr36060* %178, i32 %179, i32 128)
  %181 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %182 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  %185 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %186 = load i32, i32* @ZR060_SGR_VTOTAL_HI, align 4
  %187 = load i32, i32* %10, align 4
  %188 = ashr i32 %187, 8
  %189 = and i32 %188, 255
  %190 = call i32 @zr36060_write(%struct.zr36060* %185, i32 %186, i32 %189)
  %191 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %192 = load i32, i32* @ZR060_SGR_VTOTAL_LO, align 4
  %193 = load i32, i32* %10, align 4
  %194 = ashr i32 %193, 0
  %195 = and i32 %194, 255
  %196 = call i32 @zr36060_write(%struct.zr36060* %191, i32 %192, i32 %195)
  %197 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %198 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  %201 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %202 = load i32, i32* @ZR060_SGR_HTOTAL_HI, align 4
  %203 = load i32, i32* %10, align 4
  %204 = ashr i32 %203, 8
  %205 = and i32 %204, 255
  %206 = call i32 @zr36060_write(%struct.zr36060* %201, i32 %202, i32 %205)
  %207 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %208 = load i32, i32* @ZR060_SGR_HTOTAL_LO, align 4
  %209 = load i32, i32* %10, align 4
  %210 = ashr i32 %209, 0
  %211 = and i32 %210, 255
  %212 = call i32 @zr36060_write(%struct.zr36060* %207, i32 %208, i32 %211)
  store i32 5, i32* %10, align 4
  %213 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %214 = load i32, i32* @ZR060_SGR_VSYNC, align 4
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @zr36060_write(%struct.zr36060* %213, i32 %214, i32 %215)
  store i32 68, i32* %10, align 4
  %217 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %218 = load i32, i32* @ZR060_SGR_HSYNC, align 4
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @zr36060_write(%struct.zr36060* %217, i32 %218, i32 %219)
  %221 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %222 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = sub nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  %225 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %226 = load i32, i32* @ZR060_SGR_BVSTART, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @zr36060_write(%struct.zr36060* %225, i32 %226, i32 %227)
  %229 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %230 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = sdiv i32 %231, 2
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %10, align 4
  %235 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %236 = load i32, i32* @ZR060_SGR_BVEND_HI, align 4
  %237 = load i32, i32* %10, align 4
  %238 = ashr i32 %237, 8
  %239 = and i32 %238, 255
  %240 = call i32 @zr36060_write(%struct.zr36060* %235, i32 %236, i32 %239)
  %241 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %242 = load i32, i32* @ZR060_SGR_BVEND_LO, align 4
  %243 = load i32, i32* %10, align 4
  %244 = ashr i32 %243, 0
  %245 = and i32 %244, 255
  %246 = call i32 @zr36060_write(%struct.zr36060* %241, i32 %242, i32 %245)
  %247 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %248 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %249, 1
  store i32 %250, i32* %10, align 4
  %251 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %252 = load i32, i32* @ZR060_SGR_BHSTART, align 4
  %253 = load i32, i32* %10, align 4
  %254 = call i32 @zr36060_write(%struct.zr36060* %251, i32 %252, i32 %253)
  %255 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %256 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %10, align 4
  %262 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %263 = load i32, i32* @ZR060_SGR_BHEND_HI, align 4
  %264 = load i32, i32* %10, align 4
  %265 = ashr i32 %264, 8
  %266 = and i32 %265, 255
  %267 = call i32 @zr36060_write(%struct.zr36060* %262, i32 %263, i32 %266)
  %268 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %269 = load i32, i32* @ZR060_SGR_BHEND_LO, align 4
  %270 = load i32, i32* %10, align 4
  %271 = ashr i32 %270, 0
  %272 = and i32 %271, 255
  %273 = call i32 @zr36060_write(%struct.zr36060* %268, i32 %269, i32 %272)
  %274 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %275 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %278 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %276, %279
  store i32 %280, i32* %10, align 4
  %281 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %282 = load i32, i32* @ZR060_AAR_VSTART_HI, align 4
  %283 = load i32, i32* %10, align 4
  %284 = ashr i32 %283, 8
  %285 = and i32 %284, 255
  %286 = call i32 @zr36060_write(%struct.zr36060* %281, i32 %282, i32 %285)
  %287 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %288 = load i32, i32* @ZR060_AAR_VSTART_LO, align 4
  %289 = load i32, i32* %10, align 4
  %290 = ashr i32 %289, 0
  %291 = and i32 %290, 255
  %292 = call i32 @zr36060_write(%struct.zr36060* %287, i32 %288, i32 %291)
  %293 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %294 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %10, align 4
  %297 = add nsw i32 %296, %295
  store i32 %297, i32* %10, align 4
  %298 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %299 = load i32, i32* @ZR060_AAR_VEND_HI, align 4
  %300 = load i32, i32* %10, align 4
  %301 = ashr i32 %300, 8
  %302 = and i32 %301, 255
  %303 = call i32 @zr36060_write(%struct.zr36060* %298, i32 %299, i32 %302)
  %304 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %305 = load i32, i32* @ZR060_AAR_VEND_LO, align 4
  %306 = load i32, i32* %10, align 4
  %307 = ashr i32 %306, 0
  %308 = and i32 %307, 255
  %309 = call i32 @zr36060_write(%struct.zr36060* %304, i32 %305, i32 %308)
  %310 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %311 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %314 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %312, %315
  store i32 %316, i32* %10, align 4
  %317 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %318 = load i32, i32* @ZR060_AAR_HSTART_HI, align 4
  %319 = load i32, i32* %10, align 4
  %320 = ashr i32 %319, 8
  %321 = and i32 %320, 255
  %322 = call i32 @zr36060_write(%struct.zr36060* %317, i32 %318, i32 %321)
  %323 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %324 = load i32, i32* @ZR060_AAR_HSTART_LO, align 4
  %325 = load i32, i32* %10, align 4
  %326 = ashr i32 %325, 0
  %327 = and i32 %326, 255
  %328 = call i32 @zr36060_write(%struct.zr36060* %323, i32 %324, i32 %327)
  %329 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %330 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %10, align 4
  %333 = add nsw i32 %332, %331
  store i32 %333, i32* %10, align 4
  %334 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %335 = load i32, i32* @ZR060_AAR_HEND_HI, align 4
  %336 = load i32, i32* %10, align 4
  %337 = ashr i32 %336, 8
  %338 = and i32 %337, 255
  %339 = call i32 @zr36060_write(%struct.zr36060* %334, i32 %335, i32 %338)
  %340 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %341 = load i32, i32* @ZR060_AAR_HEND_LO, align 4
  %342 = load i32, i32* %10, align 4
  %343 = ashr i32 %342, 0
  %344 = and i32 %343, 255
  %345 = call i32 @zr36060_write(%struct.zr36060* %340, i32 %341, i32 %344)
  %346 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %347 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = sub nsw i32 %348, 4
  store i32 %349, i32* %10, align 4
  %350 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %351 = load i32, i32* @ZR060_SWR_VSTART_HI, align 4
  %352 = load i32, i32* %10, align 4
  %353 = ashr i32 %352, 8
  %354 = and i32 %353, 255
  %355 = call i32 @zr36060_write(%struct.zr36060* %350, i32 %351, i32 %354)
  %356 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %357 = load i32, i32* @ZR060_SWR_VSTART_LO, align 4
  %358 = load i32, i32* %10, align 4
  %359 = ashr i32 %358, 0
  %360 = and i32 %359, 255
  %361 = call i32 @zr36060_write(%struct.zr36060* %356, i32 %357, i32 %360)
  %362 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %363 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = sdiv i32 %364, 2
  %366 = add nsw i32 %365, 8
  %367 = load i32, i32* %10, align 4
  %368 = add nsw i32 %367, %366
  store i32 %368, i32* %10, align 4
  %369 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %370 = load i32, i32* @ZR060_SWR_VEND_HI, align 4
  %371 = load i32, i32* %10, align 4
  %372 = ashr i32 %371, 8
  %373 = and i32 %372, 255
  %374 = call i32 @zr36060_write(%struct.zr36060* %369, i32 %370, i32 %373)
  %375 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %376 = load i32, i32* @ZR060_SWR_VEND_LO, align 4
  %377 = load i32, i32* %10, align 4
  %378 = ashr i32 %377, 0
  %379 = and i32 %378, 255
  %380 = call i32 @zr36060_write(%struct.zr36060* %375, i32 %376, i32 %379)
  %381 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %382 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %381, i32 0, i32 4
  %383 = load i32, i32* %382, align 8
  %384 = sub nsw i32 %383, 4
  store i32 %384, i32* %10, align 4
  %385 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %386 = load i32, i32* @ZR060_SWR_HSTART_HI, align 4
  %387 = load i32, i32* %10, align 4
  %388 = ashr i32 %387, 8
  %389 = and i32 %388, 255
  %390 = call i32 @zr36060_write(%struct.zr36060* %385, i32 %386, i32 %389)
  %391 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %392 = load i32, i32* @ZR060_SWR_HSTART_LO, align 4
  %393 = load i32, i32* %10, align 4
  %394 = ashr i32 %393, 0
  %395 = and i32 %394, 255
  %396 = call i32 @zr36060_write(%struct.zr36060* %391, i32 %392, i32 %395)
  %397 = load %struct.tvnorm*, %struct.tvnorm** %6, align 8
  %398 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %397, i32 0, i32 5
  %399 = load i64, i64* %398, align 8
  %400 = add nsw i64 %399, 8
  %401 = load i32, i32* %10, align 4
  %402 = sext i32 %401 to i64
  %403 = add nsw i64 %402, %400
  %404 = trunc i64 %403 to i32
  store i32 %404, i32* %10, align 4
  %405 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %406 = load i32, i32* @ZR060_SWR_HEND_HI, align 4
  %407 = load i32, i32* %10, align 4
  %408 = ashr i32 %407, 8
  %409 = and i32 %408, 255
  %410 = call i32 @zr36060_write(%struct.zr36060* %405, i32 %406, i32 %409)
  %411 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %412 = load i32, i32* @ZR060_SWR_HEND_LO, align 4
  %413 = load i32, i32* %10, align 4
  %414 = ashr i32 %413, 0
  %415 = and i32 %414, 255
  %416 = call i32 @zr36060_write(%struct.zr36060* %411, i32 %412, i32 %415)
  %417 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %418 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %421 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = mul nsw i32 %419, %422
  store i32 %423, i32* %11, align 4
  %424 = load i32, i32* %11, align 4
  %425 = mul nsw i32 %424, 16
  store i32 %425, i32* %11, align 4
  %426 = load i32, i32* %11, align 4
  %427 = load %struct.vfe_settings*, %struct.vfe_settings** %7, align 8
  %428 = getelementptr inbounds %struct.vfe_settings, %struct.vfe_settings* %427, i32 0, i32 5
  %429 = load i32, i32* %428, align 4
  %430 = mul nsw i32 %426, %429
  %431 = load i64, i64* @low_bitrate, align 8
  %432 = icmp ne i64 %431, 0
  %433 = zext i1 %432 to i64
  %434 = select i1 %432, i32 400, i32 200
  %435 = sdiv i32 %430, %434
  store i32 %435, i32* %11, align 4
  %436 = load i32, i32* %11, align 4
  %437 = icmp slt i32 %436, 8192
  br i1 %437, label %438, label %439

438:                                              ; preds = %167
  store i32 8192, i32* %11, align 4
  br label %439

439:                                              ; preds = %438, %167
  %440 = load i32, i32* %11, align 4
  %441 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %442 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 4
  %444 = mul nsw i32 %443, 7
  %445 = icmp sgt i32 %440, %444
  br i1 %445, label %446, label %451

446:                                              ; preds = %439
  %447 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %448 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %447, i32 0, i32 2
  %449 = load i32, i32* %448, align 4
  %450 = mul nsw i32 %449, 7
  store i32 %450, i32* %11, align 4
  br label %451

451:                                              ; preds = %446, %439
  %452 = load i32, i32* %11, align 4
  %453 = ashr i32 %452, 3
  %454 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %455 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %454, i32 0, i32 3
  store i32 %453, i32* %455, align 4
  %456 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %457 = getelementptr inbounds %struct.zr36060, %struct.zr36060* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 4
  store i32 %458, i32* %10, align 4
  %459 = load %struct.zr36060*, %struct.zr36060** %9, align 8
  %460 = load i32, i32* @ZR060_MBCVR, align 4
  %461 = load i32, i32* %10, align 4
  %462 = call i32 @zr36060_write(%struct.zr36060* %459, i32 %460, i32 %461)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zr36060_write(%struct.zr36060*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
