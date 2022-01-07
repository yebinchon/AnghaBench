; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv41.c_nv41_fb_vram_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv41.c_nv41_fb_vram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NV_MEM_TYPE_GDDR3 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_DDR2 = common dso_local global i32 0, align 4
@NV_MEM_TYPE_DDR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv41_fb_vram_init(%struct.nouveau_fb* %0) #0 {
  %2 = alloca %struct.nouveau_fb*, align 8
  %3 = alloca i32, align 4
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %2, align 8
  %4 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %5 = call i32 @nv_rd32(%struct.nouveau_fb* %4, i32 1049716)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @NV_MEM_TYPE_GDDR3, align 4
  %11 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %12 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 %10, i32* %13, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 2
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* @NV_MEM_TYPE_DDR2, align 4
  %20 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %21 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @NV_MEM_TYPE_DDR1, align 4
  %29 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %30 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %34 = call i32 @nv_rd32(%struct.nouveau_fb* %33, i32 1049100)
  %35 = and i32 %34, -16777216
  %36 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %37 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %40 = call i32 @nv_rd32(%struct.nouveau_fb* %39, i32 1049088)
  %41 = and i32 %40, 3
  %42 = add nsw i32 %41, 1
  %43 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %44 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %47 = call i32 @nv_rd32(%struct.nouveau_fb* %46, i32 1049376)
  ret i32 %47
}

declare dso_local i32 @nv_rd32(%struct.nouveau_fb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
