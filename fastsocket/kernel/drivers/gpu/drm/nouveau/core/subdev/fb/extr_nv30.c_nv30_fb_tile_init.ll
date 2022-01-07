; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv30.c_nv30_fb_tile_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv30.c_nv30_fb_tile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nouveau_fb.0*, i32, i32, i32, %struct.nouveau_fb_tile*)* }
%struct.nouveau_fb.0 = type opaque
%struct.nouveau_fb_tile = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv30_fb_tile_init(%struct.nouveau_fb* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.nouveau_fb_tile* %6) #0 {
  %8 = alloca %struct.nouveau_fb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nouveau_fb_tile*, align 8
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.nouveau_fb_tile* %6, %struct.nouveau_fb_tile** %14, align 8
  %15 = load i32, i32* %13, align 4
  %16 = and i32 %15, 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  %19 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %14, align 8
  %20 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %42

21:                                               ; preds = %7
  %22 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %23 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.nouveau_fb.0*, i32, i32, i32, %struct.nouveau_fb_tile*)*, i32 (%struct.nouveau_fb.0*, i32, i32, i32, %struct.nouveau_fb_tile*)** %24, align 8
  %26 = icmp ne i32 (%struct.nouveau_fb.0*, i32, i32, i32, %struct.nouveau_fb_tile*)* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %29 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.nouveau_fb.0*, i32, i32, i32, %struct.nouveau_fb_tile*)*, i32 (%struct.nouveau_fb.0*, i32, i32, i32, %struct.nouveau_fb_tile*)** %30, align 8
  %32 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %33 = bitcast %struct.nouveau_fb* %32 to %struct.nouveau_fb.0*
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %14, align 8
  %38 = call i32 %31(%struct.nouveau_fb.0* %33, i32 %34, i32 %35, i32 %36, %struct.nouveau_fb_tile* %37)
  br label %39

39:                                               ; preds = %27, %21
  %40 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %14, align 8
  %41 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %40, i32 0, i32 0
  store i32 16, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %18
  %43 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %14, align 8
  %44 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %14, align 8
  %49 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i64 @max(i32 1, i32 %54)
  %56 = sub nsw i64 %55, 1
  %57 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %14, align 8
  %58 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %14, align 8
  %61 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  ret void
}

declare dso_local i64 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
