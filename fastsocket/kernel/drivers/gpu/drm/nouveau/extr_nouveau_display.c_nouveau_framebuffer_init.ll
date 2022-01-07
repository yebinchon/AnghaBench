; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_framebuffer = type { i32, i32, i32, %struct.nouveau_bo*, %struct.drm_framebuffer }
%struct.drm_framebuffer = type { i32, i32* }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.nouveau_bo = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@NV_50 = common dso_local global i64 0, align 8
@NvEvoFB32 = common dso_local global i32 0, align 4
@NvEvoFB16 = common dso_local global i32 0, align 4
@NvEvoVRAM_LP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown depth %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NV_D0 = common dso_local global i64 0, align 8
@NV_C0 = common dso_local global i64 0, align 8
@nouveau_framebuffer_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_framebuffer_init(%struct.drm_device* %0, %struct.nouveau_framebuffer* %1, %struct.drm_mode_fb_cmd2* %2, %struct.nouveau_bo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nouveau_framebuffer*, align 8
  %8 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %9 = alloca %struct.nouveau_bo*, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.nouveau_framebuffer* %1, %struct.nouveau_framebuffer** %7, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %8, align 8
  store %struct.nouveau_bo* %3, %struct.nouveau_bo** %9, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %10, align 8
  %17 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %18 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %17, i32 0, i32 4
  store %struct.drm_framebuffer* %18, %struct.drm_framebuffer** %11, align 8
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %20 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %21 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_framebuffer* %19, %struct.drm_mode_fb_cmd2* %20)
  %22 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %23 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %24 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %23, i32 0, i32 3
  store %struct.nouveau_bo* %22, %struct.nouveau_bo** %24, align 8
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_2__* @nv_device(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NV_50, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %158

33:                                               ; preds = %4
  %34 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %35 = call i32 @nouveau_bo_tile_layout(%struct.nouveau_bo* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 31232
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 65024
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %33
  %42 = load i32, i32* @NvEvoFB32, align 4
  %43 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %44 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %57

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 28672
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @NvEvoFB16, align 4
  %50 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %51 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  br label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @NvEvoVRAM_LP, align 4
  %54 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %55 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %59 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %76 [
    i32 8, label %61
    i32 15, label %64
    i32 16, label %67
    i32 24, label %70
    i32 32, label %70
    i32 30, label %73
  ]

61:                                               ; preds = %57
  %62 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %63 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %62, i32 0, i32 0
  store i32 7680, i32* %63, align 8
  br label %84

64:                                               ; preds = %57
  %65 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %66 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %65, i32 0, i32 0
  store i32 59648, i32* %66, align 8
  br label %84

67:                                               ; preds = %57
  %68 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %69 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %68, i32 0, i32 0
  store i32 59392, i32* %69, align 8
  br label %84

70:                                               ; preds = %57, %57
  %71 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %72 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %71, i32 0, i32 0
  store i32 52992, i32* %72, align 8
  br label %84

73:                                               ; preds = %57
  %74 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %75 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %74, i32 0, i32 0
  store i32 53504, i32* %75, align 8
  br label %84

76:                                               ; preds = %57
  %77 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %78 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %79 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @NV_ERROR(%struct.nouveau_drm* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %167

84:                                               ; preds = %73, %70, %67, %64, %61
  %85 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %86 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_2__* @nv_device(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 80
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load i32, i32* %13, align 4
  %94 = shl i32 %93, 8
  %95 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %96 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %92, %84
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %99
  %103 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %104 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.TYPE_2__* @nv_device(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NV_D0, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %102
  %112 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %113 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 1048576, %116
  %118 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %119 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %129

120:                                              ; preds = %102
  %121 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %122 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 16777216, %125
  %127 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %128 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %120, %111
  br label %157

130:                                              ; preds = %99
  %131 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %132 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %14, align 4
  %134 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %135 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.TYPE_2__* @nv_device(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @NV_C0, align 8
  %141 = icmp sge i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %130
  %143 = load i32, i32* %14, align 4
  %144 = ashr i32 %143, 4
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %142, %130
  %146 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %147 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = sdiv i32 %150, 4
  %152 = shl i32 %151, 4
  %153 = load i32, i32* %14, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %7, align 8
  %156 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %145, %129
  br label %158

158:                                              ; preds = %157, %4
  %159 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %160 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %161 = call i32 @drm_framebuffer_init(%struct.drm_device* %159, %struct.drm_framebuffer* %160, i32* @nouveau_framebuffer_funcs)
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %5, align 4
  br label %167

166:                                              ; preds = %158
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %164, %76
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_framebuffer*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @nouveau_bo_tile_layout(%struct.nouveau_bo*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, %struct.drm_framebuffer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
