; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv40.c_nv40_fb_vram_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv40.c_nv40_fb_vram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NV_MEM_TYPE_SDRAM = common dso_local global i32 0, align 4
@NV_MEM_TYPE_DDR1 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_GDDR3 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_DDR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fb*)* @nv40_fb_vram_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_fb_vram_init(%struct.nouveau_fb* %0) #0 {
  %2 = alloca %struct.nouveau_fb*, align 8
  %3 = alloca i32, align 4
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %2, align 8
  %4 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %5 = call i32 @nv_rd32(%struct.nouveau_fb* %4, i32 4632)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 768
  switch i32 %7, label %28 [
    i32 0, label %8
    i32 256, label %13
    i32 512, label %18
    i32 768, label %23
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @NV_MEM_TYPE_SDRAM, align 4
  %10 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %11 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load i32, i32* @NV_MEM_TYPE_DDR1, align 4
  %15 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %16 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  br label %28

18:                                               ; preds = %1
  %19 = load i32, i32* @NV_MEM_TYPE_GDDR3, align 4
  %20 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %21 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @NV_MEM_TYPE_DDR2, align 4
  %25 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %26 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %1, %23, %18, %13, %8
  %29 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %30 = call i32 @nv_rd32(%struct.nouveau_fb* %29, i32 1049100)
  %31 = and i32 %30, -16777216
  %32 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %33 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %36 = call i32 @nv_rd32(%struct.nouveau_fb* %35, i32 1049088)
  %37 = and i32 %36, 3
  %38 = add nsw i32 %37, 1
  %39 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %40 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %43 = call i32 @nv_rd32(%struct.nouveau_fb* %42, i32 1049376)
  ret i32 %43
}

declare dso_local i32 @nv_rd32(%struct.nouveau_fb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
