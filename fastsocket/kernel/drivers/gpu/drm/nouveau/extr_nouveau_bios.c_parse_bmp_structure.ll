; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bmp_structure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bmp_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"BMP version %d.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"You have an unsupported BMP version. Please send in your bios\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Bad BMP checksum\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*, i32)* @parse_bmp_structure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bmp_structure(%struct.drm_device* %0, %struct.nvbios* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nvbios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.nvbios* %1, %struct.nvbios** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %8, align 8
  %17 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %18 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32* %22, i32** %9, align 8
  %23 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %24 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %23, i32 0, i32 1
  store i32 75, i32* %24, align 8
  %25 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %26 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %25, i32 0, i32 2
  store i32 256000, i32* %26, align 4
  %27 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %28 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %27, i32 0, i32 3
  store i32 128000, i32* %28, align 8
  %29 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %30 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 90000, i32* %31, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @NV_INFO(%struct.nouveau_drm* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 5
  br i1 %43, label %44, label %49

44:                                               ; preds = %3
  %45 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %46 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 54
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %3
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 5
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %58, label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %10, align 4
  %57 = icmp sgt i32 %56, 5
  br i1 %57, label %58, label %63

58:                                               ; preds = %55, %52
  %59 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %60 = call i32 @NV_ERROR(%struct.nouveau_drm* %59, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ENOSYS, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %336

63:                                               ; preds = %55
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %336

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 44, i32* %12, align 4
  br label %120

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 48, i32* %12, align 4
  br label %119

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 54, i32* %12, align 4
  br label %118

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %82, %79
  store i32 62, i32* %12, align 4
  br label %117

86:                                               ; preds = %82
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 6
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 67, i32* %12, align 4
  br label %116

90:                                               ; preds = %86
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 16
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 75, i32* %12, align 4
  br label %115

94:                                               ; preds = %90
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %95, 16
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 89, i32* %12, align 4
  br label %114

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 20
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 118, i32* %12, align 4
  br label %113

102:                                              ; preds = %98
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 36
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 123, i32* %12, align 4
  br label %112

106:                                              ; preds = %102
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 39
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 144, i32* %12, align 4
  br label %111

110:                                              ; preds = %106
  store i32 158, i32* %12, align 4
  br label %111

111:                                              ; preds = %110, %109
  br label %112

112:                                              ; preds = %111, %105
  br label %113

113:                                              ; preds = %112, %101
  br label %114

114:                                              ; preds = %113, %97
  br label %115

115:                                              ; preds = %114, %93
  br label %116

116:                                              ; preds = %115, %89
  br label %117

117:                                              ; preds = %116, %85
  br label %118

118:                                              ; preds = %117, %78
  br label %119

119:                                              ; preds = %118, %74
  br label %120

120:                                              ; preds = %119, %70
  br label %121

121:                                              ; preds = %120
  %122 = load i32*, i32** %9, align 8
  %123 = call i64 @nv_cksum(i32* %122, i32 8)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %127 = call i32 @NV_ERROR(%struct.nouveau_drm* %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %336

130:                                              ; preds = %121
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 9
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %135 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 5
  br i1 %137, label %141, label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %139, 16
  br i1 %140, label %141, label %144

141:                                              ; preds = %138, %130
  %142 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %143 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %142, i32 0, i32 5
  store i32 1, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %138
  store i32 18, i32* %13, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 %148, 4
  store i32 %149, i32* %13, align 4
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ROM16(i32 %155)
  %157 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %158 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 4
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ROM16(i32 %164)
  %166 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %167 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %166, i32 0, i32 7
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %10, align 4
  %169 = icmp sgt i32 %168, 2
  br i1 %169, label %170, label %192

170:                                              ; preds = %150
  %171 = load i32*, i32** %9, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 24
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ROM16(i32 %173)
  %175 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %176 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %175, i32 0, i32 10
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  %178 = load i32*, i32** %9, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 26
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ROM16(i32 %180)
  %182 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %183 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %182, i32 0, i32 10
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  store i32 %181, i32* %184, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 28
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ROM16(i32 %187)
  %189 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %190 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %189, i32 0, i32 10
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  store i32 %188, i32* %191, align 8
  br label %192

192:                                              ; preds = %170, %150
  store i32 72, i32* %14, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp sgt i32 %193, 61
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* %7, align 4
  %197 = add i32 %196, 54
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %195, %192
  %199 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %200 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %207 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %206, i32 0, i32 10
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  store i32 %205, i32* %209, align 8
  %210 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %211 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %219 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %218, i32 0, i32 10
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  store i32 %217, i32* %221, align 4
  %222 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %223 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 2
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %231 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %230, i32 0, i32 10
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 2
  store i32 %229, i32* %233, align 8
  %234 = load i32, i32* %12, align 4
  %235 = icmp sgt i32 %234, 74
  br i1 %235, label %236, label %251

236:                                              ; preds = %198
  %237 = load i32*, i32** %9, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 67
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @ROM32(i32 %239)
  %241 = ptrtoint i8* %240 to i32
  %242 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %243 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 4
  %244 = load i32*, i32** %9, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 71
  %246 = load i32, i32* %245, align 4
  %247 = call i8* @ROM32(i32 %246)
  %248 = ptrtoint i8* %247 to i32
  %249 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %250 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 8
  br label %251

251:                                              ; preds = %236, %198
  %252 = load i32, i32* %12, align 4
  %253 = icmp sgt i32 %252, 88
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %256 = load i32, i32* %7, align 4
  %257 = add i32 %256, 75
  %258 = call i32 @parse_script_table_pointers(%struct.nvbios* %255, i32 %257)
  br label %259

259:                                              ; preds = %254, %251
  %260 = load i32, i32* %12, align 4
  %261 = icmp sgt i32 %260, 94
  br i1 %261, label %262, label %284

262:                                              ; preds = %259
  %263 = load i32*, i32** %9, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 89
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @ROM16(i32 %265)
  %267 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %268 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %267, i32 0, i32 11
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  store i32 %266, i32* %269, align 4
  %270 = load i32*, i32** %9, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 91
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @ROM16(i32 %272)
  %274 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %275 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %274, i32 0, i32 11
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  store i32 %273, i32* %276, align 4
  %277 = load i32*, i32** %9, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 95
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @ROM16(i32 %279)
  %281 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %282 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %281, i32 0, i32 10
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 3
  store i32 %280, i32* %283, align 4
  br label %284

284:                                              ; preds = %262, %259
  %285 = load i32, i32* %12, align 4
  %286 = icmp sgt i32 %285, 108
  br i1 %286, label %287, label %305

287:                                              ; preds = %284
  %288 = load i32*, i32** %9, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 105
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @ROM16(i32 %290)
  %292 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %293 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %292, i32 0, i32 9
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 1
  store i32 %291, i32* %294, align 4
  %295 = load i32*, i32** %9, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 107
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @ROM16(i32 %297)
  %299 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %300 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %299, i32 0, i32 9
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 2
  store i32 %298, i32* %301, align 8
  %302 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %303 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %302, i32 0, i32 9
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 3
  store i32 1, i32* %304, align 4
  br label %305

305:                                              ; preds = %287, %284
  %306 = load i32, i32* %12, align 4
  %307 = icmp sgt i32 %306, 120
  br i1 %307, label %308, label %323

308:                                              ; preds = %305
  %309 = load i32*, i32** %9, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 117
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @ROM16(i32 %311)
  %313 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %314 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %313, i32 0, i32 9
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 4
  store i32 %312, i32* %315, align 8
  %316 = load i32*, i32** %9, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 119
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @ROM16(i32 %318)
  %320 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %321 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %320, i32 0, i32 9
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 5
  store i32 %319, i32* %322, align 4
  br label %323

323:                                              ; preds = %308, %305
  %324 = load i32, i32* %12, align 4
  %325 = icmp sgt i32 %324, 157
  br i1 %325, label %326, label %335

326:                                              ; preds = %323
  %327 = load i32*, i32** %9, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 156
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @ROM16(i32 %329)
  %331 = mul nsw i32 %330, 10
  %332 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %333 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %332, i32 0, i32 9
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  store i32 %331, i32* %334, align 8
  br label %335

335:                                              ; preds = %326, %323
  store i32 0, i32* %4, align 4
  br label %336

336:                                              ; preds = %335, %125, %66, %58
  %337 = load i32, i32* %4, align 4
  ret i32 %337
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*) #1

declare dso_local i64 @nv_cksum(i32*, i32) #1

declare dso_local i32 @ROM16(i32) #1

declare dso_local i8* @ROM32(i32) #1

declare dso_local i32 @parse_script_table_pointers(%struct.nvbios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
