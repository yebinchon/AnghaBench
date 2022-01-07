; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv49.c_nv49_fb_vram_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv49.c_nv49_fb_vram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NV_MEM_TYPE_DDR1 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_DDR2 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_GDDR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fb*)* @nv49_fb_vram_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv49_fb_vram_init(%struct.nouveau_fb* %0) #0 {
  %2 = alloca %struct.nouveau_fb*, align 8
  %3 = alloca i32, align 4
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %2, align 8
  %4 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %5 = call i32 @nv_rd32(%struct.nouveau_fb* %4, i32 1050900)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 3
  switch i32 %7, label %24 [
    i32 0, label %8
    i32 1, label %13
    i32 2, label %18
    i32 3, label %23
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @NV_MEM_TYPE_DDR1, align 4
  %10 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %11 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @NV_MEM_TYPE_DDR2, align 4
  %15 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %16 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @NV_MEM_TYPE_GDDR3, align 4
  %20 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %21 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %1, %23, %18, %13, %8
  %25 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %26 = call i32 @nv_rd32(%struct.nouveau_fb* %25, i32 1049100)
  %27 = and i32 %26, -16777216
  %28 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %29 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %32 = call i32 @nv_rd32(%struct.nouveau_fb* %31, i32 1049088)
  %33 = and i32 %32, 3
  %34 = add nsw i32 %33, 1
  %35 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %36 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %39 = call i32 @nv_rd32(%struct.nouveau_fb* %38, i32 1049376)
  ret i32 %39
}

declare dso_local i32 @nv_rd32(%struct.nouveau_fb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
