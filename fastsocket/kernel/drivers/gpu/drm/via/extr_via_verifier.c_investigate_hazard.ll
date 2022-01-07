; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_investigate_hazard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_investigate_hazard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32**, i64, i32*, i32*, i32**, i32*, i32**, i32, i32*, i32, i32 }

@seqs = common dso_local global i64* null, align 8
@HALCYON_HEADER2 = common dso_local global i32 0, align 4
@HALCYON_HEADER1MASK = common dso_local global i32 0, align 4
@HALCYON_HEADER1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Illegal DMA HALCYON_HEADER2 command\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Illegal DMA HALCYON_HEADER1 command\0A\00", align 1
@HALCYON_FIREMASK = common dso_local global i32 0, align 4
@HALCYON_FIRECMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Illegal DMA HALCYON_FIRECMD command\0A\00", align 1
@HC_DUMMY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Illegal DMA HC_DUMMY command\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Illegal DMA 0xdddddddd command\0A\00", align 1
@z_address = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"Attempt to place Z buffer in system memory\0A\00", align 1
@dest_address = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"Attempt to place 3D drawing buffer in system memory\0A\00", align 1
@tex_address = common dso_local global i8* null, align 8
@HC_SubA_HTXnL0Pit = common dso_local global i32 0, align 4
@HC_HTXnEnPit_MASK = common dso_local global i32 0, align 4
@HC_HTXnLnPit_MASK = common dso_local global i32 0, align 4
@HC_HTXnLnPitE_MASK = common dso_local global i32 0, align 4
@HC_HTXnLnPitE_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Unimplemented texture level 0 pitch mode.\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Attempt to fetch texture from system memory.\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Illegal DMA data: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, %struct.TYPE_4__*)* @investigate_hazard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @investigate_hazard(i32 %0, i64 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** @seqs, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = call i32 @finish_current_sequence(%struct.TYPE_4__* %25)
  store i32 %26, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %489

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %15, %3
  %32 = load i64, i64* %6, align 8
  switch i64 %32, label %485 [
    i64 144, label %33
    i64 146, label %39
    i64 143, label %47
    i64 145, label %54
    i64 147, label %63
    i64 148, label %72
    i64 149, label %79
    i64 130, label %85
    i64 129, label %99
    i64 128, label %114
    i64 152, label %125
    i64 151, label %139
    i64 150, label %154
    i64 140, label %165
    i64 139, label %190
    i64 138, label %241
    i64 137, label %266
    i64 136, label %335
    i64 135, label %357
    i64 134, label %357
    i64 133, label %362
    i64 132, label %411
    i64 131, label %448
    i64 142, label %474
    i64 141, label %479
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @HALCYON_HEADER2, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %489

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %489

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @HALCYON_HEADER1MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @HALCYON_HEADER1, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %489

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %489

47:                                               ; preds = %31
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @HALCYON_HEADER2, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %489

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %488

54:                                               ; preds = %31
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @HALCYON_HEADER1MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @HALCYON_HEADER1, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %489

61:                                               ; preds = %54
  %62 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %488

63:                                               ; preds = %31
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @HALCYON_FIREMASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @HALCYON_FIRECMD, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  br label %489

70:                                               ; preds = %63
  %71 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %488

72:                                               ; preds = %31
  %73 = load i32, i32* @HC_DUMMY, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %489

77:                                               ; preds = %72
  %78 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %488

79:                                               ; preds = %31
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 -572662307, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %489

83:                                               ; preds = %79
  %84 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %488

85:                                               ; preds = %31
  %86 = load i8*, i8** @z_address, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, -16777216
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, 16777215
  %96 = or i32 %93, %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  store i32 0, i32* %4, align 4
  br label %489

99:                                               ; preds = %31
  %100 = load i8*, i8** @z_address, align 8
  %101 = ptrtoint i8* %100 to i64
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 16777215
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %108, 255
  %110 = shl i32 %109, 24
  %111 = or i32 %107, %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  store i32 0, i32* %4, align 4
  br label %489

114:                                              ; preds = %31
  %115 = load i8*, i8** @z_address, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %119, 49152
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %489

123:                                              ; preds = %114
  %124 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %489

125:                                              ; preds = %31
  %126 = load i8*, i8** @dest_address, align 8
  %127 = ptrtoint i8* %126 to i64
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, -16777216
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %134, 16777215
  %136 = or i32 %133, %135
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  store i32 0, i32* %4, align 4
  br label %489

139:                                              ; preds = %31
  %140 = load i8*, i8** @dest_address, align 8
  %141 = ptrtoint i8* %140 to i64
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 16777215
  %148 = load i32, i32* %5, align 4
  %149 = and i32 %148, 255
  %150 = shl i32 %149, 24
  %151 = or i32 %147, %150
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 4
  store i32 0, i32* %4, align 4
  br label %489

154:                                              ; preds = %31
  %155 = load i8*, i8** @dest_address, align 8
  %156 = ptrtoint i8* %155 to i64
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load i32, i32* %5, align 4
  %160 = and i32 %159, 49152
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  store i32 0, i32* %4, align 4
  br label %489

163:                                              ; preds = %154
  %164 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %489

165:                                              ; preds = %31
  %166 = load i8*, i8** @tex_address, align 8
  %167 = ptrtoint i8* %166 to i64
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = load i32, i32* %5, align 4
  %171 = ashr i32 %170, 24
  store i32 %171, i32* %8, align 4
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 3
  %174 = load i32**, i32*** %173, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i32*, i32** %174, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32* %182, i32** %9, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, -16777216
  %186 = load i32, i32* %5, align 4
  %187 = and i32 %186, 16777215
  %188 = or i32 %185, %187
  %189 = load i32*, i32** %9, align 8
  store i32 %188, i32* %189, align 4
  store i32 0, i32* %4, align 4
  br label %489

190:                                              ; preds = %31
  %191 = load i8*, i8** @tex_address, align 8
  %192 = ptrtoint i8* %191 to i64
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = load i32, i32* %5, align 4
  %196 = ashr i32 %195, 24
  %197 = sub nsw i32 %196, 32
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = shl i32 %198, 1
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %8, align 4
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 3
  %204 = load i32**, i32*** %203, align 8
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds i32*, i32** %204, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32* %212, i32** %9, align 8
  %213 = load i32*, i32** %9, align 8
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 16777215
  %216 = load i32, i32* %5, align 4
  %217 = and i32 %216, 255
  %218 = shl i32 %217, 24
  %219 = or i32 %215, %218
  %220 = load i32*, i32** %9, align 8
  store i32 %219, i32* %220, align 4
  %221 = load i32*, i32** %9, align 8
  %222 = getelementptr inbounds i32, i32* %221, i32 1
  store i32* %222, i32** %9, align 8
  %223 = load i32*, i32** %9, align 8
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, 16777215
  %226 = load i32, i32* %5, align 4
  %227 = and i32 %226, 65280
  %228 = shl i32 %227, 16
  %229 = or i32 %225, %228
  %230 = load i32*, i32** %9, align 8
  store i32 %229, i32* %230, align 4
  %231 = load i32*, i32** %9, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %9, align 8
  %233 = load i32*, i32** %9, align 8
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, 16777215
  %236 = load i32, i32* %5, align 4
  %237 = and i32 %236, 16711680
  %238 = shl i32 %237, 8
  %239 = or i32 %235, %238
  %240 = load i32*, i32** %9, align 8
  store i32 %239, i32* %240, align 4
  store i32 0, i32* %4, align 4
  br label %489

241:                                              ; preds = %31
  %242 = load i8*, i8** @tex_address, align 8
  %243 = ptrtoint i8* %242 to i64
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  store i64 %243, i64* %245, align 8
  %246 = load i32, i32* %5, align 4
  %247 = and i32 %246, 63
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 5
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %250, i64 %255
  store i32 %247, i32* %256, align 4
  %257 = load i32, i32* %5, align 4
  %258 = and i32 %257, 4032
  %259 = ashr i32 %258, 6
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 6
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %259, i32* %265, align 4
  store i32 0, i32* %4, align 4
  br label %489

266:                                              ; preds = %31
  %267 = load i8*, i8** @tex_address, align 8
  %268 = ptrtoint i8* %267 to i64
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  %271 = load i32, i32* %5, align 4
  %272 = ashr i32 %271, 24
  %273 = load i32, i32* @HC_SubA_HTXnL0Pit, align 4
  %274 = sub nsw i32 %272, %273
  store i32 %274, i32* %8, align 4
  %275 = load i32, i32* %8, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %304

277:                                              ; preds = %266
  %278 = load i32, i32* %5, align 4
  %279 = load i32, i32* @HC_HTXnEnPit_MASK, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %304

282:                                              ; preds = %277
  %283 = load i32, i32* %5, align 4
  %284 = load i32, i32* @HC_HTXnLnPit_MASK, align 4
  %285 = and i32 %283, %284
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 7
  %288 = load i32**, i32*** %287, align 8
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 4
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds i32*, i32** %288, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %8, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  store i32 %285, i32* %296, align 4
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 8
  %299 = load i32*, i32** %298, align 8
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 4
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  store i32 1, i32* %303, align 4
  br label %334

304:                                              ; preds = %277, %266
  %305 = load i32, i32* %5, align 4
  %306 = load i32, i32* @HC_HTXnLnPitE_MASK, align 4
  %307 = and i32 %305, %306
  %308 = load i32, i32* @HC_HTXnLnPitE_SHIFT, align 4
  %309 = ashr i32 %307, %308
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 7
  %312 = load i32**, i32*** %311, align 8
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds i32*, i32** %312, i64 %315
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  store i32 %309, i32* %320, align 4
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 8
  %323 = load i32*, i32** %322, align 8
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  store i32 0, i32* %327, align 4
  %328 = load i32, i32* %5, align 4
  %329 = and i32 %328, 1048575
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %304
  %332 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %489

333:                                              ; preds = %304
  br label %334

334:                                              ; preds = %333, %282
  store i32 0, i32* %4, align 4
  br label %489

335:                                              ; preds = %31
  %336 = load i8*, i8** @tex_address, align 8
  %337 = ptrtoint i8* %336 to i64
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 0
  store i64 %337, i64* %339, align 8
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 3
  %342 = load i32**, i32*** %341, align 8
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 4
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds i32*, i32** %342, i64 %345
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 9
  store i32* %348, i32** %9, align 8
  %349 = load i32*, i32** %9, align 8
  %350 = load i32, i32* %349, align 4
  %351 = and i32 %350, 16777215
  %352 = load i32, i32* %5, align 4
  %353 = and i32 %352, 255
  %354 = shl i32 %353, 24
  %355 = or i32 %351, %354
  %356 = load i32*, i32** %9, align 8
  store i32 %355, i32* %356, align 4
  store i32 0, i32* %4, align 4
  br label %489

357:                                              ; preds = %31, %31
  %358 = load i8*, i8** @tex_address, align 8
  %359 = ptrtoint i8* %358 to i64
  %360 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 0
  store i64 %359, i64* %361, align 8
  store i32 0, i32* %4, align 4
  br label %489

362:                                              ; preds = %31
  %363 = load i8*, i8** @tex_address, align 8
  %364 = ptrtoint i8* %363 to i64
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 0
  store i64 %364, i64* %366, align 8
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 9
  %369 = load i32**, i32*** %368, align 8
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 4
  %372 = load i64, i64* %371, align 8
  %373 = getelementptr inbounds i32*, i32** %369, i64 %372
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 0
  store i32* %375, i32** %9, align 8
  %376 = load i32, i32* %5, align 4
  %377 = and i32 %376, 15728640
  %378 = ashr i32 %377, 20
  %379 = shl i32 1, %378
  %380 = load i32*, i32** %9, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 5
  store i32 %379, i32* %381, align 4
  %382 = load i32, i32* %5, align 4
  %383 = and i32 %382, 983040
  %384 = ashr i32 %383, 16
  %385 = shl i32 1, %384
  %386 = load i32*, i32** %9, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 4
  store i32 %385, i32* %387, align 4
  %388 = load i32, i32* %5, align 4
  %389 = and i32 %388, 61440
  %390 = ashr i32 %389, 12
  %391 = shl i32 1, %390
  %392 = load i32*, i32** %9, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 3
  store i32 %391, i32* %393, align 4
  %394 = load i32, i32* %5, align 4
  %395 = and i32 %394, 3840
  %396 = ashr i32 %395, 8
  %397 = shl i32 1, %396
  %398 = load i32*, i32** %9, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 2
  store i32 %397, i32* %399, align 4
  %400 = load i32, i32* %5, align 4
  %401 = and i32 %400, 240
  %402 = ashr i32 %401, 4
  %403 = shl i32 1, %402
  %404 = load i32*, i32** %9, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 1
  store i32 %403, i32* %405, align 4
  %406 = load i32, i32* %5, align 4
  %407 = and i32 %406, 15
  %408 = shl i32 1, %407
  %409 = load i32*, i32** %9, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 0
  store i32 %408, i32* %410, align 4
  store i32 0, i32* %4, align 4
  br label %489

411:                                              ; preds = %31
  %412 = load i8*, i8** @tex_address, align 8
  %413 = ptrtoint i8* %412 to i64
  %414 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 0
  store i64 %413, i64* %415, align 8
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 9
  %418 = load i32**, i32*** %417, align 8
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 4
  %421 = load i64, i64* %420, align 8
  %422 = getelementptr inbounds i32*, i32** %418, i64 %421
  %423 = load i32*, i32** %422, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 0
  store i32* %424, i32** %9, align 8
  %425 = load i32, i32* %5, align 4
  %426 = and i32 %425, 61440
  %427 = ashr i32 %426, 12
  %428 = shl i32 1, %427
  %429 = load i32*, i32** %9, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 9
  store i32 %428, i32* %430, align 4
  %431 = load i32, i32* %5, align 4
  %432 = and i32 %431, 3840
  %433 = ashr i32 %432, 8
  %434 = shl i32 1, %433
  %435 = load i32*, i32** %9, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 8
  store i32 %434, i32* %436, align 4
  %437 = load i32, i32* %5, align 4
  %438 = and i32 %437, 240
  %439 = ashr i32 %438, 4
  %440 = shl i32 1, %439
  %441 = load i32*, i32** %9, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 7
  store i32 %440, i32* %442, align 4
  %443 = load i32, i32* %5, align 4
  %444 = and i32 %443, 15
  %445 = shl i32 1, %444
  %446 = load i32*, i32** %9, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 6
  store i32 %445, i32* %447, align 4
  store i32 0, i32* %4, align 4
  br label %489

448:                                              ; preds = %31
  %449 = load i8*, i8** @tex_address, align 8
  %450 = ptrtoint i8* %449 to i64
  %451 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 0
  store i64 %450, i64* %452, align 8
  %453 = load i32, i32* %5, align 4
  %454 = and i32 %453, 3
  store i32 %454, i32* %8, align 4
  %455 = icmp eq i32 2, %454
  br i1 %455, label %456, label %458

456:                                              ; preds = %448
  %457 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %489

458:                                              ; preds = %448
  %459 = load i32, i32* %8, align 4
  %460 = icmp eq i32 %459, 3
  %461 = zext i1 %460 to i32
  %462 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %462, i32 0, i32 10
  store i32 %461, i32* %463, align 8
  %464 = load i32, i32* %5, align 4
  %465 = ashr i32 %464, 16
  %466 = and i32 %465, 7
  %467 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %468 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i32 0, i32 11
  %469 = load i32*, i32** %468, align 8
  %470 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 4
  %472 = load i64, i64* %471, align 8
  %473 = getelementptr inbounds i32, i32* %469, i64 %472
  store i32 %466, i32* %473, align 4
  store i32 0, i32* %4, align 4
  br label %489

474:                                              ; preds = %31
  %475 = load i32, i32* %5, align 4
  %476 = and i32 %475, 65535
  %477 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 12
  store i32 %476, i32* %478, align 8
  store i32 0, i32* %4, align 4
  br label %489

479:                                              ; preds = %31
  %480 = load i32, i32* %5, align 4
  %481 = ashr i32 %480, 3
  %482 = and i32 %481, 1
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 13
  store i32 %482, i32* %484, align 4
  store i32 0, i32* %4, align 4
  br label %489

485:                                              ; preds = %31
  %486 = load i32, i32* %5, align 4
  %487 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %486)
  store i32 2, i32* %4, align 4
  br label %489

488:                                              ; preds = %83, %77, %70, %61, %52
  store i32 2, i32* %4, align 4
  br label %489

489:                                              ; preds = %488, %485, %479, %474, %458, %456, %411, %362, %357, %335, %334, %331, %241, %190, %165, %163, %162, %139, %125, %123, %122, %99, %85, %82, %76, %69, %60, %51, %46, %45, %38, %37, %28
  %490 = load i32, i32* %4, align 4
  ret i32 %490
}

declare dso_local i32 @finish_current_sequence(%struct.TYPE_4__*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
