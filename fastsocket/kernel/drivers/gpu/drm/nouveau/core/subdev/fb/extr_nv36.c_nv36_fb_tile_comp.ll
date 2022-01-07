; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv36.c_nv36_fb_tile_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv36.c_nv36_fb_tile_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_fb_tile = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_fb*, i32, i32, i32, %struct.nouveau_fb_tile*)* @nv36_fb_tile_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv36_fb_tile_comp(%struct.nouveau_fb* %0, i32 %1, i32 %2, i32 %3, %struct.nouveau_fb_tile* %4) #0 {
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
  %14 = call i32 @DIV_ROUND_UP(i32 %13, i32 64)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.nouveau_fb*, %struct.nouveau_fb** %6, align 8
  %17 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %15, %19
  %21 = call i32 @round_up(i32 %20, i32 64)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.nouveau_fb*, %struct.nouveau_fb** %6, align 8
  %23 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %22, i32 0, i32 0
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %27 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %26, i32 0, i32 1
  %28 = call i32 @nouveau_mm_head(i32* %23, i32 1, i32 %24, i32 %25, i32 1, %struct.TYPE_4__** %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %69, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %36 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, 268435456
  store i32 %38, i32* %36, align 8
  br label %44

39:                                               ; preds = %30
  %40 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %41 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, 536870912
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %46 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 6
  %51 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %52 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %56 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = ashr i32 %62, 6
  %64 = shl i32 %63, 14
  %65 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %66 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %44, %5
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
