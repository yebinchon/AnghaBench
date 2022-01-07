; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_parse_lvds_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_parse_lvds_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios }
%struct.nvbios = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.lvdstableheader = type { i32, i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"LVDS table revision not currently supported\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bios_parse_lvds_table(%struct.drm_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca %struct.nvbios*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lvdstableheader, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %18)
  store %struct.nouveau_drm* %19, %struct.nouveau_drm** %10, align 8
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 0
  store %struct.nvbios* %21, %struct.nvbios** %11, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %23 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %24 = call i32 @get_fp_strap(%struct.drm_device* %22, %struct.nvbios* %23)
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %26 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %17, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %29 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %30 = call i32 @parse_lvds_manufacturer_table_header(%struct.drm_device* %28, %struct.nvbios* %29, %struct.lvdstableheader* %14)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %5, align 4
  br label %251

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.lvdstableheader, %struct.lvdstableheader* %14, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %97 [
    i32 10, label %38
    i32 48, label %95
    i32 64, label %95
  ]

38:                                               ; preds = %35
  %39 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %40 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %43 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %41, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  br label %102

54:                                               ; preds = %38
  %55 = load i32, i32* %17, align 4
  %56 = icmp slt i32 %55, 37
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %59 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 2, i32 0
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %68 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %66, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %57
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %72, %57
  br label %94

76:                                               ; preds = %54
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %77, 48
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 0, i32* %13, align 4
  br label %93

80:                                               ; preds = %76
  store i32 0, i32* %13, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %83 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sge i32 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 2, i32* %13, align 4
  br label %88

88:                                               ; preds = %87, %80
  %89 = load i32, i32* %7, align 4
  %90 = icmp sge i32 %89, 140000
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 3, i32* %13, align 4
  br label %92

92:                                               ; preds = %91, %88
  br label %93

93:                                               ; preds = %92, %79
  br label %94

94:                                               ; preds = %93, %75
  br label %102

95:                                               ; preds = %35, %35
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %13, align 4
  br label %102

97:                                               ; preds = %35
  %98 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %99 = call i32 @NV_ERROR(%struct.nouveau_drm* %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @ENOSYS, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %251

102:                                              ; preds = %95, %94, %53
  %103 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %104 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.lvdstableheader, %struct.lvdstableheader* %14, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %106, %108
  %110 = getelementptr inbounds %struct.lvdstableheader, %struct.lvdstableheader* %14, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = mul nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = add i64 %109, %114
  %116 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %117 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i64 %115, i64* %118, align 8
  store i64 %115, i64* %15, align 8
  %119 = getelementptr inbounds %struct.lvdstableheader, %struct.lvdstableheader* %14, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %225 [
    i32 10, label %121
    i32 48, label %170
    i32 64, label %170
  ]

121:                                              ; preds = %102
  %122 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %123 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %15, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 1
  %129 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %130 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  store i32 %128, i32* %131, align 8
  %132 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %133 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %15, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 2
  %139 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %140 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 4
  store i32 %138, i32* %141, align 4
  %142 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %143 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %15, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 4
  %149 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %150 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 5
  store i32 %148, i32* %151, align 8
  %152 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %153 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %15, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 8
  %159 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %160 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 6
  store i32 %158, i32* %161, align 4
  %162 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %163 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %15, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 16
  %169 = load i32*, i32** %9, align 8
  store i32 %168, i32* %169, align 4
  br label %225

170:                                              ; preds = %102, %102
  %171 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %172 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 3
  store i32 1, i32* %173, align 8
  %174 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %175 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 4
  store i32 1, i32* %176, align 4
  %177 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %178 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* %15, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 1
  %184 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %185 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 5
  store i32 %183, i32* %186, align 8
  %187 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %188 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* %15, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 2
  %194 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %195 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 7
  store i32 %193, i32* %196, align 8
  %197 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %198 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %201 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = add i64 %203, 4
  %205 = getelementptr inbounds i32, i32* %199, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %208 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 8
  store i32 %206, i32* %209, align 4
  %210 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %211 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %214 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %216, 5
  %218 = getelementptr inbounds i32, i32* %212, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @ROM16(i32 %219)
  %221 = mul nsw i32 %220, 10
  %222 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %223 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 8
  br label %225

225:                                              ; preds = %102, %170, %121
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %245

228:                                              ; preds = %225
  %229 = load i32, i32* %17, align 4
  %230 = icmp slt i32 %229, 37
  br i1 %230, label %234, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %17, align 4
  %233 = icmp sgt i32 %232, 40
  br i1 %233, label %234, label %245

234:                                              ; preds = %231, %228
  %235 = load i32, i32* %7, align 4
  %236 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %237 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp sge i32 %235, %239
  %241 = zext i1 %240 to i32
  %242 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %243 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 5
  store i32 %241, i32* %244, align 8
  br label %245

245:                                              ; preds = %234, %231, %225
  %246 = load %struct.nvbios*, %struct.nvbios** %11, align 8
  %247 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = load i32*, i32** %8, align 8
  store i32 %249, i32* %250, align 4
  store i32 0, i32* %5, align 4
  br label %251

251:                                              ; preds = %245, %97, %33
  %252 = load i32, i32* %5, align 4
  ret i32 %252
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @get_fp_strap(%struct.drm_device*, %struct.nvbios*) #1

declare dso_local i32 @parse_lvds_manufacturer_table_header(%struct.drm_device*, %struct.nvbios*, %struct.lvdstableheader*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @ROM16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
