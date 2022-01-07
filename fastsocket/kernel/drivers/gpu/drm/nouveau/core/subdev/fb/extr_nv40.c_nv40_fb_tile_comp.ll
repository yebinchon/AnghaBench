; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv40.c_nv40_fb_tile_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv40.c_nv40_fb_tile_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_fb_tile = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv40_fb_tile_comp(%struct.nouveau_fb* %0, i32 %1, i32 %2, i32 %3, %struct.nouveau_fb_tile* %4) #0 {
  %6 = alloca %struct.nouveau_fb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_fb_tile*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.nouveau_fb_tile* %4, %struct.nouveau_fb_tile** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @DIV_ROUND_UP(i32 %13, i32 128)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.nouveau_fb*, %struct.nouveau_fb** %6, align 8
  %17 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %15, %19
  %21 = call i32 @round_up(i32 %20, i32 256)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %5
  %26 = load %struct.nouveau_fb*, %struct.nouveau_fb** %6, align 8
  %27 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %26, i32 0, i32 0
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %31 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %30, i32 0, i32 1
  %32 = call i32 @nouveau_mm_head(i32* %27, i32 1, i32 %28, i32 %29, i32 1, %struct.TYPE_4__** %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %25
  %35 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %36 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %35, i32 0, i32 0
  store i32 671088640, i32* %36, align 8
  %37 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %38 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %44 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %48 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %51, %52
  %54 = sub nsw i32 %53, 1
  %55 = ashr i32 %54, 8
  %56 = shl i32 %55, 13
  %57 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %58 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %34, %25, %5
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @nouveau_mm_head(i32*, i32, i32, i32, i32, %struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
