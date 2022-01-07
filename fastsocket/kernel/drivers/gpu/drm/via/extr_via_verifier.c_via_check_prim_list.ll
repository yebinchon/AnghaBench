; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_via_check_prim_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_via_check_prim_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32** }

@.str = private unnamed_addr constant [43 x i8] c"Unexpected termination of primitive list.\0A\00", align 1
@HC_ACMD_MASK = common dso_local global i32 0, align 4
@HC_ACMD_HCmdB = common dso_local global i32 0, align 4
@HC_ACMD_HCmdA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Expected Vertex List A command, got 0x%x\0A\00", align 1
@HC_HPLEND_MASK = common dso_local global i32 0, align 4
@HC_HPMValidN_MASK = common dso_local global i32 0, align 4
@HC_HE3Fire_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Illegal B command vertex data for AGP.\0A\00", align 1
@VIA_FIRE_BUF_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Fire offset buffer full.\0A\00", align 1
@HALCYON_HEADER2 = common dso_local global i32 0, align 4
@HALCYON_FIREMASK = common dso_local global i32 0, align 4
@HALCYON_FIRECMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [80 x i8] c"Missing Vertex Fire command, Stray Vertex Fire command  or verifier lost sync.\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Missing Vertex Fire command or verifier lost sync.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"AGP Primitive list end misaligned.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, %struct.TYPE_6__*)* @via_check_prim_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_check_prim_list(i32** %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32**, i32*** %4, align 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  br label %22

22:                                               ; preds = %236, %3
  %23 = load i32*, i32** %13, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ult i32* %23, %24
  br i1 %25, label %26, label %237

26:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = ptrtoint i32* %27 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  %33 = icmp slt i64 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %237

36:                                               ; preds = %26
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HC_ACMD_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @HC_ACMD_HCmdB, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %237

44:                                               ; preds = %36
  %45 = load i32*, i32** %13, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %13, align 8
  %47 = load i32, i32* %45, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HC_ACMD_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @HC_ACMD_HCmdA, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i32 1, i32* %11, align 4
  br label %237

58:                                               ; preds = %44
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %13, align 8
  %61 = load i32, i32* %59, align 4
  %62 = load i32, i32* @HC_HPLEND_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @HC_HPMValidN_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @HC_HE3Fire_MASK, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %58
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 30720
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %237

78:                                               ; preds = %72, %58
  store i32 0, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 128
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 2, i32 1
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %82, %78
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, 256
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 2, i32 1
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %95, %91
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, 512
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %108, %104
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 1024
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, 2048
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32, i32* %9, align 4
  %127 = and i32 %126, 4096
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %129, %125
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, 8192
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %136, %132
  %140 = load i32, i32* %9, align 4
  %141 = and i32 %140, 16384
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %143, %139
  br label %147

147:                                              ; preds = %208, %146
  %148 = load i32*, i32** %13, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = icmp ult i32* %148, %149
  br i1 %150, label %151, label %209

151:                                              ; preds = %147
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %188

156:                                              ; preds = %151
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @VIA_FIRE_BUF_SIZE, align 8
  %161 = icmp sge i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %209

164:                                              ; preds = %156
  %165 = load i32*, i32** %13, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i32**, i32*** %167, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %170, align 8
  %173 = getelementptr inbounds i32*, i32** %168, i64 %171
  store i32* %165, i32** %173, align 8
  store i32 1, i32* %12, align 4
  %174 = load i32*, i32** %13, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %13, align 8
  %176 = load i32*, i32** %13, align 8
  %177 = load i32*, i32** %5, align 8
  %178 = icmp ult i32* %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %164
  %180 = load i32*, i32** %13, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32*, i32** %13, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %13, align 8
  br label %187

187:                                              ; preds = %184, %179, %164
  br label %209

188:                                              ; preds = %151
  %189 = load i32*, i32** %13, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @HALCYON_HEADER2, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %200, label %193

193:                                              ; preds = %188
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @HALCYON_FIREMASK, align 4
  %197 = and i32 %195, %196
  %198 = load i32, i32* @HALCYON_FIRECMD, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %193, %188
  %201 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %209

202:                                              ; preds = %193
  %203 = load i32*, i32** %5, align 8
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @eat_words(i32** %13, i32* %203, i32 %204)
  store i32 %205, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %209

208:                                              ; preds = %202
  br label %147

209:                                              ; preds = %207, %200, %187, %162, %147
  %210 = load i32*, i32** %13, align 8
  %211 = load i32*, i32** %5, align 8
  %212 = icmp uge i32* %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %213
  %217 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %237

218:                                              ; preds = %213, %209
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %218
  %224 = load i32*, i32** %13, align 8
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = ptrtoint i32* %224 to i64
  %229 = ptrtoint i32* %227 to i64
  %230 = sub i64 %228, %229
  %231 = sdiv exact i64 %230, 4
  %232 = and i64 %231, 1
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %223
  %235 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %237

236:                                              ; preds = %223, %218
  br label %22

237:                                              ; preds = %234, %216, %76, %54, %43, %34, %22
  %238 = load i32*, i32** %13, align 8
  %239 = load i32**, i32*** %4, align 8
  store i32* %238, i32** %239, align 8
  %240 = load i32, i32* %11, align 4
  ret i32 %240
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @eat_words(i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
