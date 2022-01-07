; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv50.c_nv50_fb_vram_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv50.c_nv50_fb_vram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_bios = type { i32 }

@NV_MEM_TYPE_STOLEN = common dso_local global i32 0, align 4
@NV_MEM_TYPE_DDR1 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_DDR3 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_DDR2 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_GDDR3 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_GDDR4 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_GDDR5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fb*)* @nv50_fb_vram_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fb_vram_init(%struct.nouveau_fb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_fb*, align 8
  %4 = alloca %struct.nouveau_device*, align 8
  %5 = alloca %struct.nouveau_bios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %3, align 8
  %11 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %12 = call %struct.nouveau_device* @nv_device(%struct.nouveau_fb* %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %4, align 8
  %13 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %14 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device* %13)
  store %struct.nouveau_bios* %14, %struct.nouveau_bios** %5, align 8
  store i32 64, i32* %6, align 4
  store i32 256, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %16 = call i32 @nv_rd32(%struct.nouveau_fb* %15, i32 1049100)
  %17 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %18 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, -256
  %25 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  %30 = shl i32 %29, 32
  %31 = or i32 %24, %30
  %32 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %33 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %36 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 12
  %40 = sub nsw i32 %39, 64
  %41 = sub nsw i32 %40, 256
  store i32 %41, i32* %8, align 4
  %42 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %43 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %65 [
    i32 170, label %45
    i32 172, label %45
    i32 175, label %45
  ]

45:                                               ; preds = %1, %1, %1
  %46 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %47 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %46, i32 0, i32 1
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @nouveau_mm_init(i32* %47, i32 64, i32 %48, i32 1)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %2, align 4
  br label %132

54:                                               ; preds = %45
  %55 = load i32, i32* @NV_MEM_TYPE_STOLEN, align 4
  %56 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %57 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %60 = call i32 @nv_rd32(%struct.nouveau_fb* %59, i32 1052176)
  %61 = shl i32 %60, 12
  %62 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %63 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  br label %130

65:                                               ; preds = %1
  %66 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %67 = call i32 @nv_rd32(%struct.nouveau_fb* %66, i32 1050388)
  %68 = and i32 %67, 7
  switch i32 %68, label %105 [
    i32 0, label %69
    i32 1, label %74
    i32 2, label %90
    i32 3, label %95
    i32 4, label %100
  ]

69:                                               ; preds = %65
  %70 = load i32, i32* @NV_MEM_TYPE_DDR1, align 4
  %71 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %72 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 4
  br label %106

74:                                               ; preds = %65
  %75 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %76 = call i32 @nouveau_fb_bios_memtype(%struct.nouveau_bios* %75)
  %77 = load i32, i32* @NV_MEM_TYPE_DDR3, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @NV_MEM_TYPE_DDR3, align 4
  %81 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %82 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  br label %89

84:                                               ; preds = %74
  %85 = load i32, i32* @NV_MEM_TYPE_DDR2, align 4
  %86 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %87 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %79
  br label %106

90:                                               ; preds = %65
  %91 = load i32, i32* @NV_MEM_TYPE_GDDR3, align 4
  %92 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %93 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 4
  br label %106

95:                                               ; preds = %65
  %96 = load i32, i32* @NV_MEM_TYPE_GDDR4, align 4
  %97 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %98 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  br label %106

100:                                              ; preds = %65
  %101 = load i32, i32* @NV_MEM_TYPE_GDDR5, align 4
  %102 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %103 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  br label %106

105:                                              ; preds = %65
  br label %106

106:                                              ; preds = %105, %100, %95, %90, %89, %69
  %107 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %108 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %107, i32 0, i32 1
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %111 = call i32 @nv50_fb_vram_rblock(%struct.nouveau_fb* %110)
  %112 = ashr i32 %111, 12
  %113 = call i32 @nouveau_mm_init(i32* %108, i32 64, i32 %109, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %2, align 4
  br label %132

118:                                              ; preds = %106
  %119 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %120 = call i32 @nv_rd32(%struct.nouveau_fb* %119, i32 1049088)
  %121 = and i32 %120, 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 2, i32 1
  %125 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %126 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 4
  %128 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %129 = call i32 @nv_rd32(%struct.nouveau_fb* %128, i32 1049376)
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %118, %54
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %116, %52
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_fb*) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_fb*, i32) #1

declare dso_local i32 @nouveau_mm_init(i32*, i32, i32, i32) #1

declare dso_local i32 @nouveau_fb_bios_memtype(%struct.nouveau_bios*) #1

declare dso_local i32 @nv50_fb_vram_rblock(%struct.nouveau_fb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
